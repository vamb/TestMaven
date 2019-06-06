package com.suyang.aDemo.model.pojo.vo;

import java.util.List;

import com.suyang.aDemo.model.DemoCourse;
import com.suyang.aDemo.model.DemoTeacher;

public class TeacherVO extends DemoTeacher{

	private static final long serialVersionUID = 8839057246236408150L;
	
	private List<ClassVO> classList;
	
	private List<DemoCourse> courseList;

	public List<ClassVO> getClassList() {
		return classList;
	}

	public void setClassList(List<ClassVO> classList) {
		this.classList = classList;
	}

	public List<DemoCourse> getCourseList() {
		return courseList;
	}

	public void setCourseList(List<DemoCourse> courseList) {
		this.courseList = courseList;
	}

	@Override
	public String toString() {
		return "TeacherVO [classList=" + classList + ", courseList=" + courseList + "]";
	}

}
