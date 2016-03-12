package com.suyang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.model.Admin;
import com.suyang.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	@RequestMapping("/addAdmin")
	public String addAdmin(Admin admin){
		adminService.addAdmin(admin);
		return "/welcome";
	}
}
