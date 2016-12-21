package com.suyang.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.model.Auth;
import com.suyang.service.AuthService;

@Controller
@RequestMapping("/auth")
public class AuthController {
	
	@Autowired
	private AuthService authService;
	
	@RequestMapping(value = "/listAuths")
	public String listAuths(Model model){
		List<Auth> list = authService.getAuthList();
		model.addAttribute("list",list);
		return "/page/auth/listAuths";
	}
	
	@RequestMapping(value = "/editAuth")
	public String editAuth(Model model, Auth auth){
		if(auth != null && auth.getId() != null){
			auth = authService.getAuthById(auth.getId());
		}
		model.addAttribute("auth", auth);
		return "/page/auth/editAuth";
	}
	
	@RequestMapping(value = "/saveAuth")
	public String saveAuth(Model model, Auth auth){
		if(auth != null && auth.getId() != null){
			authService.insertAuth(auth);
			return "/page/auth/editAuth";
		}else{
			authService.updateAuth(auth);
			List<Auth> list = authService.getAuthList();
			model.addAttribute("list",list);
			return "/page/auth/listAuths";
		}
	}
	
	@RequestMapping(value = "/newAuth")
	public String newAuth(Model model){
		return "/page/auth/newAuth";
	}
	
	@RequestMapping(value = "/deleteAuth")
	public String deleteAuth(Model model, Auth auth){
		
		return "/page/auth/editAuth";
	}
	
}
