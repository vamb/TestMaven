package com.suyang.aDemo.service;

import java.util.List;

import com.suyang.aDemo.model.DemoClass;

public interface CClassService {

	List<DemoClass> getClassList();

	void updateClassDetail(DemoClass dClass);

	DemoClass getDClassById(Long id);

	void insertDemoClass(DemoClass dClass);

	void deleteDemoClass(DemoClass dClass);

	void logicDeleteDemoClass(DemoClass dClass);

}
