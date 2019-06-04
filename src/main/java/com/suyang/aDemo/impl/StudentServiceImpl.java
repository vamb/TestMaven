package com.suyang.aDemo.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suyang.aDemo.dao.DemoClassMapper;
import com.suyang.aDemo.dao.DemoCourseMapper;
import com.suyang.aDemo.dao.DemoStudentExample;
import com.suyang.aDemo.dao.DemoStudentMapper;
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
	
	public List<DemoStudent> getDemoStudentList(){
		DemoStudentExample stuExample = new DemoStudentExample();
		stuExample.createCriteria().andIsActiveEqualTo(true);
		return stuMapper.selectByExample(stuExample);
	}
	
	public List<StudentVO> getStudentList() {
		return stuMapper.getFullStudentList();
	}

	public StudentVO getFullStudentById(Long id) {
		return stuMapper.getFullStudentById(id);
	}

	public void insertFullStudent(StudentVO stuVO) {
		// TODO Auto-generated method stub
		
	}

	public void updateFullStudent(StudentVO stuVO) {
		// TODO Auto-generated method stub
		
	}
}
