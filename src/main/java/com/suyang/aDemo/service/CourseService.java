package com.suyang.aDemo.service;

import java.util.List;

import com.suyang.aDemo.model.DemoCourse;

public interface CourseService {

	List<DemoCourse> getDemoCourseList();

	DemoCourse getDemoCourseById(Long id);

	void insertDemoCourse(DemoCourse demoCourse);

	void updateDemoCourse(DemoCourse demoCourse);

	void logicDeleteCourse(DemoCourse demoCourse);

}
