package com.suyang.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import utils.IDGenerator;

import com.suyang.common.HirFactory;
import com.suyang.dao.AdminMapper;
import com.suyang.model.Admin;

@Service
public class AdminService {

//	private SessionFactory sessionFactory = HirFactory.sessionFactory;
	
	@Autowired
	private AdminMapper adminMapper;
	
	public List<Admin> getAdminList(){
//		return adminMapper.getAdminList();
//		Session session = sessionFactory.openSession();
//		List<Admin> admins = session.createQuery("from HibAdmin").list();
//		session.close();
//		return admins;
		return null;
	}
	
	public Long addAdmin(Admin admin){
		admin.setId(IDGenerator.generateId());
//		admin.setPassword(CreateMD5.getMd5(admin.getPassword(), admin.getId()));
		adminMapper.addAdmin(admin);
		return admin.getId();
	}

	public void updateAdmin(Admin admin) {
//		admin.setPassword(CreateMD5.getMd5(admin.getPassword(), admin.getId()));
		adminMapper.updateAdmin(admin);
	}

	public Admin getAdminByName(String name) {
		return adminMapper.getAdminByName(name);
	}

	public Admin getOtherAdminByName(String name, Long id) {
		return adminMapper.getOtherAdminByName(name,id);
	}
}
