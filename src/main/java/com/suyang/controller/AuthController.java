package com.suyang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping(value = "/listAuths")
	public String listAuths(Model model){
		return "/page/auth/listAuths";
	}
	
	@RequestMapping(value = "/editAuth")
	public String editAuth(Model model){
		return "/page/auth/editAuth";
	}
	
	@RequestMapping(value = "/newAuth")
	public String newAuth(Model model){
		return "/page/auth/newAuth";
	}
	
}
