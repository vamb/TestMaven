package com.suyang.aDemo.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.aDemo.model.DemoCourse;
import com.suyang.aDemo.service.CourseService;

@Controller
@RequestMapping("/course")
public class CourseController {
	
	@Autowired
	private CourseService cursSrv;
	
	@RequestMapping(value = "/listCourse")
	public String listCourse(Model model){
		List<DemoCourse> list = cursSrv.getDemoCourseList();
		model.addAttribute("list",list);
		return "/page/demo/course/listCourse";
	}
	
	@RequestMapping(value = "/editCourse")
	public String editStu(Model model, DemoCourse demoCourse){
		if(demoCourse != null && demoCourse.getId() != null){
			demoCourse = cursSrv.getDemoCourseById(demoCourse.getId());
		}
		model.addAttribute("course", demoCourse);
		return "/page/demo/course/editCourse";
	}
	
	@RequestMapping(value = "/saveCourse")
	public String saveStu(Model model, DemoCourse demoCourse){
		if(demoCourse != null && demoCourse.getId() == null){
			cursSrv.insertDemoCourse(demoCourse);
			demoCourse = cursSrv.getDemoCourseById(demoCourse.getId());
			model.addAttribute("course", demoCourse);
			return "/page/demo/course/editCourse";
		}else{
			cursSrv.updateDemoCourse(demoCourse);
			List<DemoCourse> list = cursSrv.getDemoCourseList();
			model.addAttribute("list",list);
			return "/page/demo/course/listCourse";
		}
	}
	
	@RequestMapping(value = "/newCourse")
	public String newStu(Model model){
		return "/page/demo/course/newCourse";
	}
	
	@RequestMapping(value = "/deleteCourse")
	public String deleteStu(Model model, DemoCourse demoCourse){
		cursSrv.logicDeleteCourse(demoCourse);
		List<DemoCourse> list = cursSrv.getDemoCourseList();
		model.addAttribute("list",list);
		return "/page/demo/course/listCourse";
	}
	
}
