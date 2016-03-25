package Test.controller;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.suyang.model.Article;
import com.suyang.service.ArticleService;

@Controller
public class TestArticleController {
	
	@Autowired
	ArticleService articleService;
	
	@Test
	public void TestListArticle(){
		List<Article> list = articleService.getAtriclesByMybatis();
		list.toString();
	}
	
}
