package com.suyang.aDemo.service;

import java.util.List;

import com.suyang.aDemo.model.DemoStudent;
import com.suyang.aDemo.model.pojo.vo.StudentVO;

public interface StudentService {

	List<StudentVO> getStudentList();

	StudentVO getFullStudentById(Long id);

	void insertFullStudent(StudentVO stuVO);

	void updateFullStudent(StudentVO stuVO);

	void logicDeleteStudent(DemoStudent demoStudent);

	List<DemoStudent> getDemoStudentList();

}
