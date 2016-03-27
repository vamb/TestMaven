package com.suyang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.model.Admin;
import com.suyang.model.Auth;
import com.suyang.service.AdminService;
import com.suyang.service.AuthService;

@Controller
@RequestMapping("/auth")
public class AuthController {
	
	@Autowired
	private AuthService authService;
	
	@RequestMapping("/saveAuth")
	public String saveAdmin(Auth auth){
		if(auth.getId()!=null){
			authService.addAdmin(auth);
		}else{
			authService.updateAdmin(auth);
		}
		return "/welcome";
	}
}
