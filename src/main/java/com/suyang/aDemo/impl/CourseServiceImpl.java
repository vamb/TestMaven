package com.suyang.aDemo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suyang.aDemo.dao.DemoCourseExample;
import com.suyang.aDemo.dao.DemoCourseMapper;
import com.suyang.aDemo.model.DemoCourse;
import com.suyang.aDemo.service.CourseService;
import com.suyang.aDemo.utils.Constant;
import utils.IDGenerator;

@Service
public class CourseServiceImpl implements CourseService{
	
	@Autowired
	public DemoCourseMapper cursMapper;

	public List<DemoCourse> getDemoCourseList() {
		DemoCourseExample cursExample = new DemoCourseExample();
		cursExample.createCriteria().andIsActiveEqualTo(Constant.TRUE);
		return cursMapper.selectByExample(cursExample);
	}

	public DemoCourse getDemoCourseById(Long id) {
		return cursMapper.selectByPrimaryKey(id);
	}

	public void insertDemoCourse(DemoCourse demoCourse) {
		demoCourse.setId(IDGenerator.generateId());
		demoCourse.setIsActive(Constant.TRUE);
		cursMapper.insert(demoCourse);
	}

	public void updateDemoCourse(DemoCourse demoCourse) {
		cursMapper.updateByPrimaryKeySelective(demoCourse);
	}

	public void logicDeleteCourse(DemoCourse demoCourse) {
		demoCourse.setIsActive(Constant.FALSE);
		cursMapper.updateByPrimaryKeySelective(demoCourse);
	}

}
