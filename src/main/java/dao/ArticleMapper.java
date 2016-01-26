package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import module.Article;

public interface ArticleMapper {
	
	public List<Article> getArticleList();
}
