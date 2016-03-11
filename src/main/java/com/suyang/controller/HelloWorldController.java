package com.suyang.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/Hello")
public class HelloWorldController {
	
	@RequestMapping(value = "/Hello")
	public String HelloWorld(Model model){
		Map<String, String> map = new HashMap<String, String>();
		map.put("map1", "map1Value");
		map.put("map2", "map2Value");
		map.put("map3", "map3Value");
		model.addAttribute("map",map);
		return "/welcome";
	}
	
	@RequestMapping(value="/addUser")
	public String addUser(Model model){
		Map<String,String> map = new HashMap<String,String>();
		map.put("actionName", "this is an add user action");
		model.addAttribute("map", map);
		return "/welcome";
	}
	
	@RequestMapping("/deleteUser")
	public String deleteUser(Model model){
		Map<String,String> map = new HashMap<String,String>();
		map.put("actionName", "this is a delete user action");
		model.addAttribute("map",map);
		return "/welcome";
	}

}
