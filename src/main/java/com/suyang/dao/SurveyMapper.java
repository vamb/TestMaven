package com.suyang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.suyang.bean.BeanSurvey;
import com.suyang.model.Survey;

public interface SurveyMapper {
	
	public List<Survey> getSurveyList();
	
	public void addSurvey(Survey survey);

	public Survey getSurveyById(@Param("suryId")Long suryId);
	
	public void updateSurvey(Survey survey);
	
	public BeanSurvey getBeanSurveyById(@Param("suryId")Long suryId);

	public Integer getMaxSorting();
	
	public boolean checkSurveyNameUnique(Survey survey);

	public void deleteSurvey(@Param("surveyId")Long surveyId);
}
