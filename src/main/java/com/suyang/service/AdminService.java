package com.suyang.service;

import org.springframework.stereotype.Service;

import com.suyang.dao.AdminDAOImpl;
import com.suyang.model.Admin;

@Service
public class AdminService implements AdminServiceImpl{

	private AdminDAOImpl adminDAOImpl;


	public AdminDAOImpl getAdminDAOImpl() {
		return adminDAOImpl;
	}


	public void setAdminDAOImpl(AdminDAOImpl adminDAOImpl) {
		this.adminDAOImpl = adminDAOImpl;
	}


	public void addAdmin(Admin admin) {
		AdminDAOImpl adminDAOImpl = new AdminDAOImpl();
		adminDAOImpl.addAdmin(admin);
		
	}

}
