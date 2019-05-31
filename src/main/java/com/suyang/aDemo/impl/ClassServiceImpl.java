package com.suyang.aDemo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suyang.aDemo.dao.DemoClassExample;
import com.suyang.aDemo.dao.DemoClassMapper;
import com.suyang.aDemo.model.DemoClass;
import com.suyang.aDemo.service.CClassService;
import utils.IDGenerator;

@Service
public class ClassServiceImpl implements CClassService{
	
	@Autowired
	public DemoClassMapper classMapper;

	public List<DemoClass> getClassList() {
		DemoClassExample classExample = new DemoClassExample();
		classExample.createCriteria().andIsActiveEqualTo(true);
		return classMapper.selectByExample(classExample);
	}

	public void updateClassDetail(DemoClass dClass) {
		classMapper.updateByPrimaryKey(dClass);
	}

	public DemoClass getDClassById(Long id) {
		return classMapper.selectByPrimaryKey(id);
	}

	public void insertDemoClass(DemoClass dClass) {
		dClass.setId(IDGenerator.generateId());
		dClass.setIsActive(true);
		classMapper.insert(dClass);
	}

	public void deleteDemoClass(DemoClass dClass) {
		classMapper.deleteByPrimaryKey(dClass.getId());
	}

	public void logicDeleteDemoClass(DemoClass dClass) {
		dClass = classMapper.selectByPrimaryKey(dClass.getId());
		dClass.setIsActive(false);
		classMapper.updateByPrimaryKey(dClass);
	}

}
