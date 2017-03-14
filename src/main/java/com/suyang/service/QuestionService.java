package com.suyang.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import utils.IDGenerator;

import com.suyang.bean.Constant;
import com.suyang.dao.QuestionMapper;
import com.suyang.model.Question;


@Service
public class QuestionService {
	
	@Autowired
	public QuestionMapper questionMapper;
	
	public List<Question> getQuestionListByServeyId(Long id) {
		return questionMapper.getQuestionListByServeyId(id);
	}

	@Transactional
	public void updateQuestion(Question question) {
		questionMapper.updateQuestion(question);
	}

	@Transactional
	public void insertQuestion(Question question) {
		question.setId(IDGenerator.generateId());
		question.setDeleted(Constant.NOT_DELETED);
		questionMapper.insertQuestion(question);
	}

	public Question getQustById(Long id) {
		return questionMapper.getQustById(id);
	}

	public void deleteQustById(Long id) {
		Question question = new Question();
		question.setId(id);
		question.setDeleted(Constant.DELETED);
		questionMapper.updateQuestion(question);
	}
}
