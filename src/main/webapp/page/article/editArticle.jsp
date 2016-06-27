<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>editArticle</title>
	</head>
	<meta name="menu" content="editArticle"/>
	
	<body>
		<h2>welcome to editArticle page</h2>
		
		<div class="portlet">
			<div class="portlet-title">
				<c:if test="${not empty article}">
					${article.title }
				</c:if>
			</div>
			<div class="portlet-body">
				<div class="row-fluid">
					<div class="span3">
						body 1
						${article.title}
					</div>
					<div class="span3">
						body 2
						${article.content}
					</div>
					<div class="span3">
						body 3
						${article.authId}
					</div>
					<div class="span3">
						body 3
						${article.status}
					</div>
				</div>
			</div>
		</div>
		
	</body>
</html>
