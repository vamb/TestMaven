package com.suyang.aDemo.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.aDemo.model.DemoClass;
import com.suyang.aDemo.service.CClassService;

@Controller
@RequestMapping("/cclass")
public class ClassController {
	
	@Autowired
	private CClassService classSrv;
	
	@RequestMapping(value = "/listClass")
	public String listClass(Model model){
		List<DemoClass> list = classSrv.getClassList();
		model.addAttribute("list",list);
		return "/page/demo/class/listClass";
	}
	
	@RequestMapping(value = "/editClass")
	public String editClass(Model model, DemoClass dClass){
		if(dClass != null && dClass.getId()!= null) {
			try {
				classSrv.updateClassDetail(dClass);
				DemoClass result = classSrv.getDClassById(dClass.getId());
				model.addAttribute("cclass", result);
			}catch(Exception e) {
				model.addAttribute("error", e.getMessage());
			}
		}
		return "/page/demo/class/editClass";
	}
	
	@RequestMapping(value = "/saveClass")
	public String saveStu(Model model, DemoClass dClass){
		if(dClass != null && dClass.getId() != null){
			classSrv.insertDemoClass(dClass);
			return "/page/demo/class/editClass";
		}else{
			classSrv.updateClassDetail(dClass);
			List<DemoClass> list = classSrv.getClassList();
			model.addAttribute("list",list);
			return "/page/demo/class/listClass";
		}
	}
	
	@RequestMapping(value = "/newClass")
	public String newClass(Model model){
		return "/page/demo/class/newClass";
	}
	
	@RequestMapping(value = "/deleteClass")
	public String deleteStu(Model model, DemoClass dClass){
		classSrv.deleteDemoClass(dClass);
		List<DemoClass> list = classSrv.getClassList();
		model.addAttribute("list",list);
		return "/page/demo/class/listClass";
	}
	
}
