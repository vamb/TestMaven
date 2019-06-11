package com.suyang.aDemo.service;

import java.util.List;

import com.suyang.aDemo.model.DemoTeacher;
import com.suyang.aDemo.model.pojo.vo.TeacherVO;

public interface TeacherService {

	List<DemoTeacher> getDemoTeacherList();

	TeacherVO getFullTeacherById(Long id);

	void insertFullTeacher(TeacherVO tchVO);

	void updateFullTeacher(TeacherVO tchVO);

	List<TeacherVO> getFullTeacherList();

	void logicDeleteTeacher(DemoTeacher demoTch);

}
