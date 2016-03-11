package com.suyang.dao;


import org.hibernate.SessionFactory;

import com.suyang.model.Admin;

public class AdminDAOImpl implements AdminDAO{

	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addAdmin(Admin admin) {
		sessionFactory.getCurrentSession().save(admin);
		
	}

}
