package com.suyang.aDemo.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suyang.aDemo.model.DemoClass;
import com.suyang.aDemo.model.DemoCourse;
import com.suyang.aDemo.model.DemoStudent;
import com.suyang.aDemo.model.pojo.vo.StudentVO;
import com.suyang.aDemo.service.CClassService;
import com.suyang.aDemo.service.CourseService;
import com.suyang.aDemo.service.StudentService;

@Controller
@RequestMapping("/stu")
public class StudentController {
	
	@Autowired
	private StudentService stuSrv;
	
	@Autowired
	private CClassService classSrv;
	
	@Autowired
	private CourseService cosSrv;
	
	@RequestMapping(value = "/listStu")
	public String listStu(Model model){
		List<StudentVO> list = stuSrv.getStudentList();
//		List<DemoStudent> list = stuSrv.getDemoStudentList();
		model.addAttribute("list",list);
		return "/page/demo/student/listStudent";
	}
	
	@RequestMapping(value = "/editStu")
	public String editStu(Model model, StudentVO stuVO){
		if(stuVO != null && stuVO.getId() != null){
			stuVO = stuSrv.getFullStudentById(stuVO.getId());
		}
		List<DemoClass> list = classSrv.getClassList();
		List<DemoCourse> courseList = cosSrv.getDemoCourseList();
		model.addAttribute("classlist", list);
		model.addAttribute("courseList", courseList);
		model.addAttribute("stu", stuVO);
		return "/page/demo/student/editStudent";
	}
	
	@RequestMapping(value = "/saveStu")
	public String saveStu(Model model, StudentVO stuVO){
		if(stuVO != null && stuVO.getId() == null){
			stuSrv.insertFullStudent(stuVO);
			return "/page/demo/student/editStudent";
		}else{
			stuSrv.updateFullStudent(stuVO);
			List<StudentVO> list = stuSrv.getStudentList();
			model.addAttribute("list",list);
			return "/page/demo/student/listStudent";
		}
	}
	
	@RequestMapping(value = "/newStu")
	public String newStu(Model model){
		return "/page/demo/student/newStudent";
	}
	
	@RequestMapping(value = "/deleteStu")
	public String deleteStu(Model model, DemoStudent demoStudent){
		stuSrv.logicDeleteStudent(demoStudent);
		List<StudentVO> list = stuSrv.getStudentList();
		model.addAttribute("list",list);
		return "/page/demo/student/listStudent";
	}
	
}
