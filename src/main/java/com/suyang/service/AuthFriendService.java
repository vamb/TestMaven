package com.suyang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suyang.dao.AuthFriendMapper;
import com.suyang.model.AuthFriend;

@Service
public class AuthFriendService {
	
	@Autowired
	public AuthFriendMapper authFriendMapper;
	
	public List<AuthFriend> getAuthFriend(){
		return authFriendMapper.getAuthFriendList();
	}
}
