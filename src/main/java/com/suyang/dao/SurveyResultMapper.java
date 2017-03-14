package com.suyang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.suyang.model.SurveyResult;

public interface SurveyResultMapper {
	
	public List<SurveyResult> getSurveyResultList();
	
	public SurveyResult getSurveyResultById(@Param("suryRestId")Long suryRestId);
	
}
