package com.suyang.aDemo.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.aDemo.model.DemoTeacher;
import com.suyang.aDemo.model.pojo.vo.TeacherVO;
import com.suyang.aDemo.service.TeacherService;

@Controller
@RequestMapping("/tch")
public class TeacherController {
	
	@Autowired
	private TeacherService tchSrv;
	
	@RequestMapping(value = "/listTch")
	public String listTch(Model model){
		List<DemoTeacher> list = tchSrv.getDemoTeacherList();
		model.addAttribute("list",list);
		return "/page/demo/teacher/listTeacher";
	}
	
	@RequestMapping(value = "/editTch")
	public String editTch(Model model, DemoTeacher demoTch){
		TeacherVO tchVO = new TeacherVO();
		if(demoTch != null && demoTch.getId() != null){
			tchVO = tchSrv.getFullTeacherById(demoTch.getId());
		}
		model.addAttribute("tch", tchVO);
		return "/page/demo/teacher/editTeacher";
	}
	
	@RequestMapping(value = "/saveTch")
	public String saveTch(Model model, TeacherVO tchVO){
		if(tchVO != null && tchVO.getId() == null){
			tchSrv.insertFullTeacher(tchVO);
			return "/page/demo/teacher/editTeacher";
		}else{
			tchSrv.updateFullTeacher(tchVO);
			List<TeacherVO> list = tchSrv.getFullTeacherList();
			model.addAttribute("list",list);
			return "/page/demo/teacher/listTeacher";
		}
	}
	
	@RequestMapping(value = "/newTch")
	public String newStu(Model model){
		return "/page/demo/teacher/editTeacher";
	}
	
	@RequestMapping(value = "/deleteTch")
	public String deleteTch(Model model, DemoTeacher demoTch){
		tchSrv.logicDeleteTeacher(demoTch);
		List<TeacherVO> list = tchSrv.getFullTeacherList();
		model.addAttribute("list",list);
		return "/page/demo/teacher/listTeacher";
	}
	
}
