package com.suyang.aDemo.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suyang.aDemo.dao.DemoClassExample;
import com.suyang.aDemo.dao.DemoClassMapper;
import com.suyang.aDemo.dao.DemoCourseExample;
import com.suyang.aDemo.dao.DemoCourseMapper;
import com.suyang.aDemo.dao.DemoStudentExample;
import com.suyang.aDemo.dao.DemoStudentMapper;
import com.suyang.aDemo.model.DemoClass;
import com.suyang.aDemo.model.DemoCourse;
import com.suyang.aDemo.model.DemoStudent;
import com.suyang.aDemo.model.pojo.vo.StudentVO;
import com.suyang.aDemo.service.StudentService;

import utils.IDGenerator;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	public DemoStudentMapper stuMapper;
	
	@Autowired
	public DemoClassMapper classMapper;
	
	@Autowired
	public DemoCourseMapper courseMapper;
	
//	@Autowired
//	public AuthMapper authMapper;
//	
//	public List<Auth> getAuthList(){
//		return authMapper.getAuthList();
//	}
//
//	public void addAdmin(Auth auth) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	public void updateAdmin(Auth auth) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	public Auth getAuthById(Long authId) {
//		return authMapper.getAuthById(authId);
//	}
//
//	public void insertAuth(Auth auth) {
//		auth.setId(IDGenerator.generateId());
//	}
//
//	public void updateAuth(Auth auth) {
//		// TODO Auto-generated method stub
//		
//	}

	public List<StudentVO> getStudentList() {
		DemoStudentExample stuExample = new DemoStudentExample();
		stuExample.createCriteria().andIsActiveEqualTo(true);
		List<DemoStudent> list = stuMapper.selectByExample(stuExample);
		
		DemoClassExample classExample = new DemoClassExample();
		classExample.createCriteria().andIsActiveEqualTo(true);
		List<DemoClass> classList = classMapper.selectByExample(classExample);
		
		DemoCourseExample courseExample = new DemoCourseExample();
		courseExample.createCriteria().andIsActiveEqualTo(true);
		List<DemoCourse> courseList = courseMapper.selectByExample(courseExample);
		
		List<StudentVO> stuList = new ArrayList<StudentVO>();
		StudentVO stuVO = null;
		for(DemoStudent stu: list) {
			stuVO = new StudentVO();
			stuVO.setId(stu.getId());
			stuVO.setName(stu.getName());
			stuVO.setAge(stu.getAge());
			stuVO.setClassId(stu.getClassId());
			stuVO.setGenter(stu.getGenter());
			stuVO.setIsActive(stu.getIsActive());
			stuList.add(stuVO);
		}
		
		List<StudentVO> list2 = stuMapper.getFullStudentList();
		return stuList;
	}

	public StudentVO getFullStudentById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertFullStudent(StudentVO stuVO) {
		// TODO Auto-generated method stub
		
	}

	public void updateFullStudent(StudentVO stuVO) {
		// TODO Auto-generated method stub
		
	}
}
