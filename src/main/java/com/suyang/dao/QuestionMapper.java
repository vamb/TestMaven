package com.suyang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.suyang.model.Option;
import com.suyang.model.Question;

public interface QuestionMapper {
	
	public List<Question> getQuestionList();
	
	public Question getQustById(@Param("qustId")Long qustId);

	public List<Question> getQuestionListByServeyId(@Param("surveyId")Long surveyId);

	public void updateQuestion(Question question);

	public void insertQuestion(Question question);

}
