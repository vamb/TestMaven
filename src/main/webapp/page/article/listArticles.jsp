<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>listArticles</title>
	</head>
	<meta name="menu" content="listArtilces"/>
	
	<body>
		<h3 class="page-title">
			文章管理
			<!-- <small>statistics and more</small> -->
		</h3>
		
		<ul class="breadcrumb">
			<li>
				<i class="icon-home"></i>
				<a href="${rc.contextPath}/common/index">Home</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="${rc.contextPath}/article/listArticles">Article List</a>
			</li>
		</ul>

		<div class="span6">
			<div class="portlet box green">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-comments"></i>
						Striped Table
					</div>
					<div class="tools">
						<a class="collapse" href="javascript:;"></a>
						<a class="config" data-toggle="modal" href="#portlet-config"></a>
						<a class="reload" href="javascript:;"></a>
						<a class="remove" href="javascript:;"></a>
					</div>
				</div>
			<div class="portlet-body" style="display: block;">
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>Id</th>
							<th>Title</th>
							<th>Content</th>
							<th class="hidden-480">Status</th>
							<th>AuthId</th>
							<th>Deleted</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="art" items="${list}">
							<tr>
								<td>${art.id }</td>
								<td>${art.title }</td>
								<td>${art.content }</td>
								<td>${art.status }</td>
								<td>${art.authId }</td>
								<td>${art.deleted }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			</div>
		</div>
	</body>
</html>
