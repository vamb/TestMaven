package com.suyang.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suyang.dao.ArticleMapper;
import com.suyang.model.Article;
import utils.JDBCUtil;

@Service
public class ArticleService {
	
	@Autowired
	public ArticleMapper articleMapper;
	
	public List<com.suyang.model.Article> getArticleListJDBC() throws Exception{
		/*return articleMapper.getArticleList();*/
		String sql = "select * from tbl_article";
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		List<Article> list = new LinkedList<Article>();
		Article article;
		while (rs.next()) {
			article = new Article();
			article.setId(rs.getLong("Id"));
			article.setAuthId(rs.getLong("auth_id"));
			article.setContent(rs.getString("content"));
			article.setDeleted(rs.getInt("deleted"));
			article.setStatus(rs.getString("status"));
			article.setTitle(rs.getString("title"));
			list.add(article);
		}
		JDBCUtil.close(rs, ps, conn);
		return list;
	}
	
	public void addArticleJDBC(Article article) throws Exception{
		String sql = "insert into tbl_article (id,auth_id,content,deleted,status,title)values(?,?,?,?,?,?)";
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setLong(1, article.getId());
		stmt.setLong(2, article.getAuthId());
		stmt.setString(3, article.getContent());
		stmt.setInt(4, article.getDeleted());
		stmt.setString(5, article.getStatus());
		stmt.setString(6, article.getTitle());
		stmt.execute();
		JDBCUtil.close(null, stmt, conn);
	}
	
	public void updateArticleJDBC(Article article)throws Exception{
		String sql = "update tbl_article set title = ? where id = ?";
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, article.getTitle());
		stmt.setLong(2, article.getId());
		stmt.executeUpdate();
	}
	
	public void deleteArticleJDBC(Article article)throws Exception{
		String sql = "delete from tbl_article where id = ?";
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setLong(1, article.getId());
		stmt.executeUpdate();
	}
	
	public List<Article> getAtriclesByMybatis(){
		return articleMapper.getArticleList();
	}
	
	public Article getArticleById(Long id){
		return articleMapper.getArticleById(id);
	}

	public void deleteArticle(Long artId) {
		articleMapper.logicDelete(artId);
		
	}
}
