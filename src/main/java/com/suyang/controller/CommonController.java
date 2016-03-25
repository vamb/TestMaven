package com.suyang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("common")
public class CommonController {

	@RequestMapping("index")
	public String index(Model model){
		return "/index";
	}
}
