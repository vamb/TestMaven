package com.suyang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.model.Admin;
import com.suyang.service.AdminService;

@Controller
@RequestMapping("")
public class LoginController {
	
	@Autowired
	AdminService adminService;

	@RequestMapping("login")
	public String login(Model model){
		return "/page/login";
	}
	
	@RequestMapping("loginAction")
	public String loginAction(Model model, Admin admin){
		Admin sysAdmin = adminService.getAdminByName(admin.getName());
		if(sysAdmin!=null && admin.getPassword().equals(sysAdmin.getPassword())){
			return "redirect:common/index";
		}else{
			model.addAttribute("error", "用户名或密码不正确");
			return "redirect:login";
		}
	}
	
	@RequestMapping("register")
	public String registerAction(Admin admin,Model model){
		Admin sysAdmin = adminService.getAdminByName(admin.getName());
		if(sysAdmin!=null){
			model.addAttribute("error", "已存在此用户，请重新输入用户名");
			return null;
		}else{
			Long newId = adminService.addAdmin(admin);
			model.addAttribute("id", newId);
			return "redirect:common/index";
		}
	}
	
//	@RequestMapping("indexJsp")
//	public String indexJsp(Model model){
//		return "/page/login";
//	}
	
}
