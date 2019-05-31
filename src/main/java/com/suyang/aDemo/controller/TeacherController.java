package com.suyang.aDemo.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.aDemo.model.pojo.bo.StudentBO;
import com.suyang.aDemo.model.pojo.vo.StudentVO;
import com.suyang.aDemo.service.StudentService;

@Controller
@RequestMapping("/stu")
public class TeacherController {
//	
//	@Autowired
//	private StudentService stuSrv;
//	
//	@RequestMapping(value = "/listStu")
//	public String listStu(Model model){
//		List<StudentVO> list = stuSrv.getStudentList();
//		model.addAttribute("list",list);
//		return "/page/demo/student/listStudent";
//	}
//	
//	@RequestMapping(value = "/editStu")
//	public String editStu(Model model, StudentBO stuBO){
//		StudentVO stuVO = new StudentVO();
//		if(stuBO != null && stuBO.getId() != null){
//			stuVO = stuSrv.getFullStudentById(stuBO.getId());
//		}
//		model.addAttribute("stu", stuVO);
//		return "/page/demo/student/editStudent";
//	}
//	
//	@RequestMapping(value = "/saveStu")
//	public String saveStu(Model model, StudentVO stuVO){
//		if(stuVO != null && stuVO.getId() != null){
//			stuSrv.insertFullStudent(stuVO);
//			return "/page/demo/student/editStudent";
//		}else{
//			stuSrv.updateFullStudent(stuVO);
//			List<StudentVO> list = stuSrv.getStudentList();
//			model.addAttribute("list",list);
//			return "/page/demo/student/listStudent";
//		}
//	}
//	
//	@RequestMapping(value = "/newStu")
//	public String newStu(Model model){
//		return "/page/auth/newAuth";
//	}
//	
//	@RequestMapping(value = "/deleteStu")
//	public String deleteStu(Model model, StudentBO stuBO){
//		return "/page/auth/editAuth";
//	}
	
}
