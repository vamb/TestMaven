package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ArticleMapper;
import model.Article;

@Service
public class ArticleService {
	
	@Autowired
	public ArticleMapper articleMapper;
	
	public List<Article> getArticleList(){
		return articleMapper.getArticleList();
	}
	
}
