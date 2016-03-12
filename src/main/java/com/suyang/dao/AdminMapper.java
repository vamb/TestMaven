package com.suyang.dao;

import java.util.List;

import com.suyang.model.Admin;

public interface AdminMapper {
	
	public List<Admin> getAdminList();
	
	public Long addAdmin(Admin admin);
}
