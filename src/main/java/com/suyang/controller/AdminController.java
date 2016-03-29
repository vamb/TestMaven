package com.suyang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.model.Admin;
import com.suyang.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	@RequestMapping("/adminList")
	public String adminList(Model model){
		List<Admin> list = adminService.getAdminList();
		model.addAttribute("list", list);
		return "/adminList";
	}
	
	@RequestMapping("/addAdmin")
	public String addAdmin(Admin admin){
		adminService.addAdmin(admin);
		return "/welcome";
	}
	
	@RequestMapping("/saveAdmin")
	public String saveAdmin(Admin admin,Model model){
		if(admin.getId()==null){
			Admin temp = adminService.getAdminByName(admin.getName());
			if(temp!=null){
				model.addAttribute("error", "用户名重复,请重新输入");
				return "/errorPage";
			}else{
				adminService.addAdmin(admin);
			}
		}else{
			Admin temp = adminService.getOtherAdminByName(admin.getName(),admin.getId());
			if(temp!=null){
				model.addAttribute("error", "用户名重复,请重新输入");
				return "/errorPage";
			}else{
				adminService.updateAdmin(admin);
			}
		}
		return "redirect:adminList";
	}
	
	//////////////////////////////////////////////////////////////////
	
	@RequestMapping("/loginAdmin")
	public String loginAdmin(Admin admin,Model model){
		if(admin.getName()!=null && admin.getPassword()!=null){
			Admin sysAdmin = adminService.getAdminByName(admin.getName());
			if(sysAdmin.getPassword().equals(admin.getPassword())){
				model.addAttribute("success", "登录成功");
				return "/page/index";
			}
		}else{
			model.addAttribute("error", "用户名或者密码不能为空");
			return "/page/error";
		}
		return null;
	}
}
