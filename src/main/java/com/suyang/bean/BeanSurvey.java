package com.suyang.bean;

import java.util.List;

import com.suyang.model.Survey;

public class BeanSurvey extends Survey{

	private static final long serialVersionUID = 2919142885568132612L;
	
	private List<BeanQuestion> questions;

	public List<BeanQuestion> getQuestions() {
		return questions;
	}

	public void setQuestions(List<BeanQuestion> questions) {
		this.questions = questions;
	}
}
