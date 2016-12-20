package com.suyang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.suyang.model.Auth;

public interface AuthMapper {
	
	public List<Auth> getAuthList();
	
	public Long addAuth(Auth auth);

	public Auth getAuthById(@Param("authId")Long authId);
}
