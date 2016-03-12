package com.suyang.dao;

import java.util.List;

import com.suyang.model.Auth;

public interface AuthMapper {
	
	public List<Auth> getAuthList();
	
	public Long addAuth(Auth auth);
}
