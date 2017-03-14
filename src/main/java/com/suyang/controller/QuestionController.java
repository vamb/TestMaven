package com.suyang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.model.Question;
import com.suyang.model.Survey;
import com.suyang.service.QuestionService;
import com.suyang.service.SurveyService;


@Controller
@RequestMapping("/question")
public class QuestionController {
	
	@Autowired
	public QuestionService questionService;
	
	@Autowired
	public SurveyService surveyService;
	
	@RequestMapping(value="/listQuesitons")
	public String listQuesitons(Model model, Survey survey){
		survey = surveyService.getSurveyById(survey.getId());
		List<Question> questions = questionService.getQuestionListByServeyId(survey.getId());
		model.addAttribute("survey", survey);
		model.addAttribute("questions", questions);
		return "/page/survey/listQuestions";
	}
	
	@RequestMapping(value="/saveQuestion")
	public String saveQuestion(Model model, Question question){
		if(question.getId() != null){
			questionService.updateQuestion(question);
		}else{
			questionService.insertQuestion(question);
		}
		Survey survey = surveyService.getSurveyById(question.getSuryId());
		List<Question> questions = questionService.getQuestionListByServeyId(survey.getId());
		model.addAttribute("survey", survey);
		model.addAttribute("questions", questions);
		return "/page/survey/listQuestions";
	}
	
	@RequestMapping(value="/deleteQuesiton")
	public String deleteQuesiton(Model model, Question question){
		questionService.deleteQustById(question.getId());
		question = questionService.getQustById(question.getId());
		Survey survey = surveyService.getSurveyById(question.getSuryId());
		List<Question> questions = questionService.getQuestionListByServeyId(survey.getId());
		model.addAttribute("survey", survey);
		model.addAttribute("questions", questions);
		return "/page/survey/listQuestions";
	}
}
