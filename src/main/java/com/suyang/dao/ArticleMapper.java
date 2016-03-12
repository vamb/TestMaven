package com.suyang.dao;

import java.util.List;

import com.suyang.model.Article;

public interface ArticleMapper {
	
	public List<Article> getArticleList();
	
	public String getArticleTitleById(Long id);
}
