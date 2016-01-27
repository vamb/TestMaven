package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Article;
import service.ArticleService;


@Controller
@RequestMapping("/article")
public class ArticleController {
	
	@Autowired
	public ArticleService articleService;
	
	@RequestMapping(value = "/listArticles")
	public String HelloWorld(Model model) throws Exception{
		List<Article> list = articleService.getArticleListJDBC();
		model.addAttribute("list",list);
		return "/welcome";
	}
	

}
