package com.suyang.aDemo.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suyang.aDemo.dao.DemoTeacherClassMapper;
import com.suyang.aDemo.dao.DemoTeacherExample;
import com.suyang.aDemo.dao.DemoTeacherMapper;
import com.suyang.aDemo.dao.DemoUserCourseMapper;
import com.suyang.aDemo.model.DemoCourse;
import com.suyang.aDemo.model.DemoTeacher;
import com.suyang.aDemo.model.DemoTeacherClass;
import com.suyang.aDemo.model.DemoUserCourse;
import com.suyang.aDemo.model.pojo.vo.ClassVO;
import com.suyang.aDemo.model.pojo.vo.TeacherVO;
import com.suyang.aDemo.service.TeacherService;
import com.suyang.aDemo.utils.Constant;

import utils.IDGenerator;

@Service
public class TeacherServiceImpl implements TeacherService{
	
	@Autowired
	public DemoTeacherMapper tchMapper;
	
	@Autowired
	public DemoTeacherClassMapper tchClassMapper;
	
	@Autowired
	public DemoUserCourseMapper userCourseMapper;

	public List<DemoTeacher> getDemoTeacherList() {
		DemoTeacherExample tchExample = new DemoTeacherExample();
		tchExample.createCriteria().andIsActiveEqualTo(Constant.TRUE);
		return tchMapper.selectByExample(tchExample);
	}

	public TeacherVO getFullTeacherById(Long id) {
		return tchMapper.getFullTeacherById(id);
	}

	@Transactional
	public void insertFullTeacher(TeacherVO tchVO) {
		DemoTeacher demoTch = new DemoTeacher();
		demoTch.setId(IDGenerator.generateId());
		demoTch.setGenter(tchVO.getGenter());
		demoTch.setName(tchVO.getName());
		demoTch.setIsActive(Constant.TRUE);
		tchMapper.insertSelective(demoTch);
		
		List<ClassVO> classList = tchVO.getClassList();
		List<DemoCourse> courseList = tchVO.getCourseList();
		
		DemoTeacherClass tchClass = null;
		for(ClassVO classVO: classList) {
			tchClass = new DemoTeacherClass();
			tchClass.setId(IDGenerator.generateId());
			tchClass.setTeacherId(tchVO.getId());
			tchClass.setClassId(classVO.getId());
			tchClass.setTeacherType(classVO.getTeacherType());
			tchClassMapper.insertSelective(tchClass);
		}
		
		DemoUserCourse userCourse = null;
		for(DemoCourse course: courseList) {
			userCourse = new DemoUserCourse();
			userCourse.setId(IDGenerator.generateId());
			userCourse.setCourseId(course.getId());
			userCourse.setUserId(tchVO.getId());
			userCourse.setUserType(Constant.USER_COURSE_TEACHER);
			userCourseMapper.insertSelective(userCourse);
		}
	}

	@Transactional
	public void updateFullTeacher(TeacherVO tchVO) { //deleteByTeacherId
		if(tchVO != null && tchVO.getId() != null) {
			DemoTeacher demoTch = new DemoTeacher();
			demoTch.setId(tchVO.getId());
			demoTch.setGenter(tchVO.getGenter());
			demoTch.setName(tchVO.getName());
			demoTch.setIsActive(Constant.TRUE);
			tchMapper.updateByPrimaryKeySelective(demoTch);
		}

		List<ClassVO> classList = tchVO.getClassList();
		List<DemoCourse> courseList = tchVO.getCourseList();
		
		tchClassMapper.deleteByTeacherId(tchVO.getId());
		DemoTeacherClass tchClass = null;
		for(ClassVO classVO: classList) {
			tchClass = new DemoTeacherClass();
			tchClass.setId(IDGenerator.generateId());
			tchClass.setTeacherId(tchVO.getId());
			tchClass.setClassId(classVO.getId());
			tchClass.setTeacherType(classVO.getTeacherType());
			tchClassMapper.insertSelective(tchClass);
		}
		
		userCourseMapper.deleteByTeacherId(tchVO.getId());
		DemoUserCourse userCourse = null;
		for(DemoCourse course: courseList) {
			userCourse = new DemoUserCourse();
			userCourse.setId(IDGenerator.generateId());
			userCourse.setCourseId(course.getId());
			userCourse.setUserId(tchVO.getId());
			userCourse.setUserType(Constant.USER_COURSE_TEACHER);
			userCourseMapper.insertSelective(userCourse);
		}
	}

	public List<TeacherVO> getFullTeacherList() {
		return tchMapper.getFullTeacherList();
	}

	public void logicDeleteTeacher(DemoTeacher demoTch) {
		demoTch.setIsActive(Constant.FALSE);
		tchMapper.updateByPrimaryKeySelective(demoTch);
	}

}
