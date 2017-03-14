package com.suyang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.model.Survey;
import com.suyang.service.SurveyService;


@Controller
@RequestMapping("/survey")
public class SurveyController {
	
	@Autowired
	public SurveyService surveyService;
	
	@RequestMapping(value = "/listSurveys")
	public String listSurveys(Model model){
		List<Survey> list = surveyService.getSurveysByMybatis();
		model.addAttribute("list",list);
		return "/page/survey/listSurveys";
	}
	
	@RequestMapping(value= "/detailSurvey")
	public String detailSurvey(Model model, Survey survey){
		survey = surveyService.getSurveyById(survey.getId());
		model.addAttribute("survey", survey);
		return "/page/survey/newSurvey";
	}
	
	@RequestMapping(value = "/saveSurvey")
	public String saveSurvey(Model model, Survey survey){
		if(surveyService.checkSurveyNameUnique(survey)){
			model.addAttribute("survey",survey);
			model.addAttribute("msg", "survey name already exist");
			return "/page/survey/newSurvey";
		}
		if(survey!=null && !StringUtils.isEmpty(survey.getId())){
			surveyService.updateSurvey(survey);
			List<Survey> list = surveyService.getSurveysByMybatis();
			model.addAttribute("list",list);
			return "/page/survey/listSurveys";
		}else{
			surveyService.insertSurvey(survey);
			Integer sorting = surveyService.getMaxSorting();
			if(sorting == null){
				sorting = 0;
			}else{
				sorting += 1;
			}
			survey = new Survey();
			survey.setSorting(sorting);
			model.addAttribute("survey",survey);
			return "/page/survey/newSurvey";
		}
		
	}
	
	@RequestMapping(value = "/newSurvey")
	public String newSurvey(Model model){
		Integer sorting = surveyService.getMaxSorting();
		if(sorting == null){
			sorting = 0;
		}else{
			sorting += 1;
		}
		Survey survey = new Survey();
		survey.setSorting(sorting);
		model.addAttribute("survey",survey);
		return "/page/survey/newSurvey";
	}
	
	@RequestMapping(value = "/deleteSurvey")
	public String deleteSurvey(Model model, Survey survey){
		surveyService.deleteSurvey(survey.getId());
		List<Survey> list = surveyService.getSurveysByMybatis();
		model.addAttribute("list",list);
		return "/page/survey/listSurveys";
	}
}
