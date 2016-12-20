package com.suyang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suyang.model.Article;
import com.suyang.service.ArticleService;


@Controller
@RequestMapping("/article")
public class ArticleController {
	
	@Autowired
	public ArticleService articleService;
	
	@RequestMapping(value = "/listArticles")
	public String listArticles(Model model){
		List<Article> list = articleService.getAtriclesByMybatis();
		model.addAttribute("list",list);
		return "/page/article/listArticles";
	}
	
	@RequestMapping(value = "/editArticle")
	public String editArticle(Model model, Article article){
		if(article!=null && !StringUtils.isEmpty(article.getId())){
			article = articleService.getArticleById(article.getId());
			model.addAttribute("article", article);
		}
		return "/page/article/editArticle";
	}
	
	@RequestMapping(value = "/newArticle")
	public String newArticle(Model model){
		return "/page/article/newArticle";
	}
	
	@RequestMapping(value = "/delete")
	public String deleteArticle(Model model, Article article){
		articleService.deleteArticle(article.getId());
		List<Article> list = articleService.getAtriclesByMybatis();
		model.addAttribute("list",list);
		return "/page/article/listArticles";
	}
	
}
