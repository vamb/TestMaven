package com.suyang.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suyang.dao.SurveyMapper;
import com.suyang.model.Survey;
import utils.IDGenerator;

@Service
public class SurveyService {
	
	@Autowired
	public SurveyMapper surveyMapper;
	
	public Survey getSurveyById(Long id){
		return surveyMapper.getSurveyById(id);
	}

	public List<Survey> getSurveysByMybatis() {
		return surveyMapper.getSurveyList();
	}

	@Transactional
	public void updateSurvey(Survey survey) {
		surveyMapper.updateSurvey(survey);
	}

	@Transactional
	public void insertSurvey(Survey survey) {
		survey.setId(IDGenerator.generateId());
		surveyMapper.addSurvey(survey);
	}

	public Integer getMaxSorting() {
		return surveyMapper.getMaxSorting();
	}
	
	public boolean checkSurveyNameUnique(Survey survey){
		return surveyMapper.checkSurveyNameUnique(survey);
	}

	@Transactional
	public void deleteSurvey(Long id) {
		surveyMapper.deleteSurvey(id);
	}
}
