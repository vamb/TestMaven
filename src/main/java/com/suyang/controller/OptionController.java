package com.suyang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.suyang.model.Option;
import com.suyang.model.Question;
import com.suyang.model.Survey;
import com.suyang.service.OptionService;
import com.suyang.service.QuestionService;
import com.suyang.service.SurveyService;


@Controller
@RequestMapping("/option")
public class OptionController {
	
	@Autowired
	public QuestionService questionService;
	
	@Autowired
	public SurveyService surveyService;
	
	@Autowired
	public OptionService optionService;
	
	@RequestMapping(value="/listOptions")
	public String listQuesitons(Model model, Question question){
		question = questionService.getQustById(question.getId());
		Survey survey = surveyService.getSurveyById(question.getSuryId());
		List<Option> options = optionService.getOptionsByQustId(question.getId());
		model.addAttribute("survey", survey);
		model.addAttribute("question", question);
		model.addAttribute("options", options);
		return "/page/survey/listOptions";
	}
	
	@RequestMapping(value="/saveOption")
	public String saveQuestion(Model model, Option option){
		if(option.getId() != null){
			optionService.updateOption(option);
		}else{
			optionService.insertOption(option);
		}
		Question question = questionService.getQustById(option.getQustId());
		Survey survey = surveyService.getSurveyById(question.getSuryId());
		List<Option> options = optionService.getOptionsByQustId(question.getId());
		model.addAttribute("survey", survey);
		model.addAttribute("question", question);
		model.addAttribute("options", options);
		return "/page/survey/listOptions";
	}
	
	@RequestMapping(value="/deleteOption")
	public String deleteQuesiton(Model model, Option option){
		optionService.deleteoptionById(option.getId());
		Question question = questionService.getQustById(option.getQustId());
		question = questionService.getQustById(question.getId());
		Survey survey = surveyService.getSurveyById(question.getSuryId());
		List<Option> options = optionService.getOptionsByQustId(question.getId());
		model.addAttribute("survey", survey);
		model.addAttribute("question", question);
		model.addAttribute("options", options);
		return "/page/survey/listOptions";
	}
}
