package com.suyang.aDemo.model.pojo.vo;

import com.suyang.aDemo.model.DemoClass;

public class ClassVO extends DemoClass{
	private static final long serialVersionUID = 2569046486714529915L;
	
	private Boolean teacherType;

	public Boolean getTeacherType() {
		return teacherType;
	}

	public void setTeacherType(Boolean teacherType) {
		this.teacherType = teacherType;
	}

	@Override
	public String toString() {
		return "ClassVO [teacherType=" + teacherType + "]";
	}

}
