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
		
		<div style="width:100%;margin-bottom:10px;">
			<div  style="margin-left:30px;">
				<a href="javascript:void(0)" onclick="newArticle()"><span>Add New</span></a>
			</div>
		</div>
		
		<div class="span6">
		
			<div class="portlet box green">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-comments"></i>
						Table
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
							<th>Option</th>
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
								<td>
									<span><a class="tableModify" attrId="${art.id }" href="javascript:void(0)">modify</a></span>
									<span>|</span>
									<span><a class="tableDelete" attrId="${art.id }" href="javascript:void(0)">delete</a></span>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<form id="hiddenForm" action="" method="post">
					<input type="hidden" id="hiddenId" name="id" value="" />
				</form>
			</div>
			</div>
		</div>
		<script type="text/javascript">
			$(document).ready(function(){
				
			});
			
			$(".tableModify").click(function(){
				$("#hiddenId").val($(this).attr("attrId"));
				$("#hiddenForm").attr("action","${rc.contextPath}/article/editArticle");
				$("#hiddenForm").submit();
			});
			
			$(".tableDelete").click(function(){
				$("#hiddenId").val($(this).attr("attrId"));
				$("#hiddenForm").attr("action","${rc.contextPath}/article/deleteAuth");
				$("#hiddenForm").submit();
			});
			
			function newArticle(){
				$("#hiddenId").val("");
				$("#hiddenForm").attr("action","${rc.contextPath}/article/editArticle");
				$("#hiddenForm").submit();
			}
			
		</script>
	
	</body>
	
</html>
