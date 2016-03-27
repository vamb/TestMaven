package com.suyang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.suyang.model.Admin;

public interface AdminMapper {
	
	public List<Admin> getAdminList();
	
	public Long addAdmin(Admin admin);

	public void updateAdmin(Admin admin);

	public Admin getAdminByName(@Param("name")String name);

	public Admin getOtherAdminByName(@Param("name")String name,@Param("id") Long id);
}
