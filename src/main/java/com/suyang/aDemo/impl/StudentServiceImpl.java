package com.suyang.aDemo.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suyang.aDemo.dao.DemoClassMapper;
import com.suyang.aDemo.dao.DemoCourseMapper;
import com.suyang.aDemo.dao.DemoStudentExample;
import com.suyang.aDemo.dao.DemoStudentMapper;
import com.suyang.aDemo.dao.DemoUserCourseMapper;
import com.suyang.aDemo.model.DemoCourse;
import com.suyang.aDemo.model.DemoStudent;
import com.suyang.aDemo.model.DemoUserCourse;
import com.suyang.aDemo.model.pojo.vo.StudentVO;
import com.suyang.aDemo.service.StudentService;
import com.suyang.aDemo.utils.Constant;

import utils.IDGenerator;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	public DemoStudentMapper stuMapper;
	
	@Autowired
	public DemoClassMapper classMapper;
	
	@Autowired
	public DemoCourseMapper courseMapper;
	
	@Autowired
	public DemoUserCourseMapper userCourseMapper;
	
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

	@Transactional
	public void insertFullStudent(StudentVO stuVO) {
		DemoStudent demoStu = new DemoStudent();
		demoStu.setId(IDGenerator.generateId());
		demoStu.setAge(stuVO.getAge());
		demoStu.setName(stuVO.getName());
		if(stuVO.getDemoClass() != null) {
			demoStu.setClassId(stuVO.getDemoClass().getId());
		}
		demoStu.setIsActive(Constant.TRUE);
		stuMapper.insertSelective(demoStu);
		
		List<DemoCourse> courseList = stuVO.getCourseList();
		DemoUserCourse userCourse = null;
		if(courseList != null && courseList.size()>0) {
			for(DemoCourse course: courseList) {
				userCourse = new DemoUserCourse();
				userCourse.setId(IDGenerator.generateId());
				userCourse.setUserId(stuVO.getId());
				userCourse.setUserType(Constant.USER_COURSE_STUDENT);
				userCourse.setCourseId(course.getId());
				userCourseMapper.insertSelective(userCourse);
			}
		}
	}

	@Transactional
	public void updateFullStudent(StudentVO stuVO) {
		if(stuVO != null && stuVO.getId() != null) {
			DemoStudent demoStu = new DemoStudent();
			demoStu.setId(stuVO.getId());
			demoStu.setAge(stuVO.getAge());
			demoStu.setClassId(stuVO.getDemoClass().getId());
			stuMapper.updateByPrimaryKeySelective(demoStu);
			
			List<DemoCourse> courseList = stuVO.getCourseList();
			DemoUserCourse userCourse = null;
			userCourseMapper.deleteByStuId(stuVO.getId());
			if(courseList != null && courseList.size()>0) {
				for(DemoCourse course: courseList) {
					userCourse = new DemoUserCourse();
					userCourse.setId(IDGenerator.generateId());
					userCourse.setUserId(stuVO.getId());
					userCourse.setUserType(Constant.USER_COURSE_STUDENT);
					userCourse.setCourseId(course.getId());
					userCourseMapper.insertSelective(userCourse);
				}
			}
		}
	}

	public void logicDeleteStudent(DemoStudent demoStudent) {
		if(demoStudent != null && demoStudent.getId() != null) {
			demoStudent.setIsActive(Constant.FALSE);
			stuMapper.updateByPrimaryKeySelective(demoStudent);
		}
		
	}
}
