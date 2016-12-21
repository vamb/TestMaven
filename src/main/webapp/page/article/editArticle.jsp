<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>editArticle</title>
	</head>
	<meta name="menu" content="listArtilces"/>
	
	<body>
		<h3 class="page-title">welcome to editArticle page</h2>
		
		<ul class="breadcrumb">
			<li>
				<i class="icon-home"></i>
				<a href="${rc.contextPath}/common/index">Home</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="${rc.contextPath}/article/listArticles">Article List</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="javascript:void(0)" onclick="loadCurrend()">
					<c:if test="${not empty article.id}">
					edit article
					</c:if>
					<c:if test="${empty article.id}">
					new article
					</c:if>
				</a>
			</li>
		</ul>
		
		<div class="portlet">
			<div class="portlet-title">
				<c:if test="${not empty article}">
					${article.title }
				</c:if>
			</div>
			<div class="portlet-body">
				<div class="row-fluid">
					<div class="span3">
						${article.title}
					</div>
					<div class="span3">
						${article.content}
					</div>
					<div class="span3">
						${article.authId}
					</div>
					<div class="span3">
						${article.status}
					</div>
				</div>
			</div>
		</div>
		
		<form id="hiddenForm" style="display:none;" action="">
			<input type="hidden" name="id" value="${article.id }" />
		</form>
		
		<script type="text/javascript">
			function loadCurrend(){
				$("#hiddenForm").attr("action", "${rc.contextPath}/article/editArticle");
				$("#hiddenForm").submit();
			}
		</script>
	</body>
</html>
