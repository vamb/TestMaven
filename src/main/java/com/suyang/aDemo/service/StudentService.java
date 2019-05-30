package com.suyang.aDemo.service;

import java.util.List;

import com.suyang.aDemo.model.pojo.vo.StudentVO;

public interface StudentService {

	List<StudentVO> getStudentList();

	StudentVO getFullStudentById(Long id);

	void insertFullStudent(StudentVO stuVO);

	void updateFullStudent(StudentVO stuVO);

}
