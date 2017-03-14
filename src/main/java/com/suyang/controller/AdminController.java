package com.suyang.controller;

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

	@RequestMapping("/listAdmins")
	public String adminList(Model model){
//		List<Admin> list = adminService.getAdminList();
//		model.addAttribute("list", list);
		return "/page/admin/listAdmins";
	}
	
	@RequestMapping("/editAdmin")
	public String addAdmin(Admin admin,Model model){
//		adminService.addAdmin(admin);
		return "/page/admin/editAdmin";
	}
	
	@RequestMapping("/newAdmin")
	public String newAdmin(Model model){
		return "/page/admin/newAdmin";
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
	
}
