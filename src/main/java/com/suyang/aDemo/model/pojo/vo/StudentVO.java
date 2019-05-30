package com.suyang.aDemo.model.pojo.vo;

import java.util.List;

import com.suyang.aDemo.model.DemoClass;
import com.suyang.aDemo.model.DemoCourse;
import com.suyang.aDemo.model.DemoStudent;

public class StudentVO extends DemoStudent{

	private static final long serialVersionUID = -5251420556522844997L;

	private DemoClass demoClass;
	
	private List<DemoCourse> courseList;

	public DemoClass getDemoClass() {
		return demoClass;
	}

	public void setDemoClass(DemoClass demoClass) {
		this.demoClass = demoClass;
	}

	public List<DemoCourse> getCourseList() {
		return courseList;
	}

	public void setCourseList(List<DemoCourse> courseList) {
		this.courseList = courseList;
	}

	@Override
	public String toString() {
		return "StudentVO [demoClass=" + demoClass + ", courseList=" + courseList + "]";
	} 
}
