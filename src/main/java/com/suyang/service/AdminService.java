package com.suyang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import utils.IDGenerator;

import com.suyang.dao.AdminMapper;
import com.suyang.model.Admin;

@Service
public class AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	public List<Admin> getAdminList(){
		return adminMapper.getAdminList();
	}
	
	public Long addAdmin(Admin admin){
		admin.setId(IDGenerator.generateId());
		adminMapper.addAdmin(admin);
		return admin.getId();
	}
}
