package com.suyang.controller;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

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
	public static void main(String[] args) throws MessagingException{
		Properties prop=new Properties();
		prop.put("mail.host","smtp.163.com" );
		prop.put("mail.transport.protocol", "smtp");
		prop.put("mail.smtp.auth", true);
		//使用java发送邮件5步骤
		//1.创建sesssion
		Session session=Session.getInstance(prop);
		//开启session的调试模式，可以查看当前邮件发送状态
		session.setDebug(true);


		//2.通过session获取Transport对象（发送邮件的核心API）
		Transport ts=session.getTransport();
		//3.通过邮件用户名密码链接
		ts.connect("vambzhang@163.com", ",,Pass10,@");


		//4.创建邮件

		Message msg=createSimpleMail(session);


		//5.发送电子邮件

		ts.sendMessage(msg, msg.getAllRecipients());
		}
	
		public static MimeMessage createSimpleMail(Session session) throws AddressException,MessagingException{
		//创建邮件对象
		MimeMessage mm=new MimeMessage(session);
		//设置发件人
		mm.setFrom(new InternetAddress("vambzhang@163.com"));
		//设置收件人
		mm.setRecipient(Message.RecipientType.TO, new InternetAddress("ilesanmiolade@yahoo.com"));
		//设置抄送人
//		mm.setRecipient(Message.RecipientType.CC, new InternetAddress("用户名@163.com"));

		mm.setSubject("an email by java");
		mm.setContent("success", "text/html;charset=gbk");

		return mm;
	}
}
