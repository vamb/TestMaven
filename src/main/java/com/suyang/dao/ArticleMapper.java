package com.suyang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.suyang.model.Article;

public interface ArticleMapper {
	
	public List<Article> getArticleList();
	
	public Article getArticleById(Long id);

	public void logicDelete(@Param("artId")Long artId);
}
