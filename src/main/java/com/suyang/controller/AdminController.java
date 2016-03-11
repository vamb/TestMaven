package com.suyang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.model.Admin;
import com.suyang.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	private AdminService adminService;

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	@RequestMapping("/addAdmin")
	public String addAdmin(Admin admin){
		AdminService adminService = new AdminService();
		adminService.addAdmin(admin);
		return "/welcome";
	}
}
