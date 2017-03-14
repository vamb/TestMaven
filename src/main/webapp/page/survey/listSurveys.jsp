<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>listArticles</title>
	</head>
	<meta name="menu" content="listSurveys"/>
	
	<body>
		<h3 class="page-title" style="height:50px;">
			调查问卷管理
		</h3>
		
		<ul class="breadcrumb">
			<li>
				<i class="icon-home"></i>
				<a href="${rc.contextPath}/common/index">Home</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="${rc.contextPath}/survey/listSurveys">Survey List</a>
			</li>
		</ul>
		
		<div style="width:100%;margin-bottom:10px;">
			<div  style="margin-left:30px;">
				<a href="javascript:void(0)" onclick="newSurvey()"><span>Add New</span></a>
			</div>
		</div>
		
		<div style="width:100%;">
		
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
							<tr style="width:100%;">
								<th style="width:5%">Num</th>
								<th style="width:20%;">Id</th>
								<th style="width:20%;">SurveyName</th>
								<th style="width:10%;">Sorting</th>
								<th style="width:15%;">Deleted</th>
								<th style="width:30%;">Option</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="sury" items="${list}" varStatus="index">
								<tr style="width:100%;">
									<td style="width:5%;">${index.count }</td>
									<td style="width:20%;">${sury.id }</td>
									<td style="width:20%;">${sury.suryName }</td>
									<td style="width:10%;">${sury.sorting }</td>
									<td style="width:15%;">${sury.deleted eq 0?'Normal':'Deleted' }</td>
									<td style="width:30%;">
										<span><a class="tableModify" attrId="${sury.id }" onclick="modifyAction(this)" href="javascript:void(0)">modify</a></span>
										<span>|</span>
										<span><a class="tableDelete" attrId="${sury.id }" onclick="deleteAction(this)" href="javascript:void(0)">delete</a></span>
										<span>|</span>
										<span><a class="tableAddQuestion" attrId="${sury.id }" onclick="addQuestAction(this)" href="javascript:void(0)">add Question</a></span>
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
		/* 	
			$(".tableModify").click(function(){
				$("#hiddenId").val($(this).attr("attrId"));
				$("#hiddenForm").attr("action","${rc.contextPath}/article/editArticle");
				$("#hiddenForm").submit();
			});
			
			$(".tableDelete").click(function(){
				$("#hiddenId").val($(this).attr("attrId"));
				$("#hiddenForm").attr("action","${rc.contextPath}/article/deleteAuth");
				$("#hiddenForm").submit();
			}); */
			
			function newSurvey(){
				$("#hiddenId").val("");
				$("#hiddenForm").attr("action","${rc.contextPath}/survey/newSurvey");
				$("#hiddenForm").submit();
			}
			
			function modifyAction(obj){
				$("#hiddenId").val($(obj).attr("attrId"));
				$("#hiddenForm").attr("action","${rc.contextPath}/survey/detailSurvey");
				$("#hiddenForm").submit();
			}
			
			function deleteAction(obj){
				$("#hiddenId").val($(obj).attr("attrId"));
				$("#hiddenForm").attr("action","${rc.contextPath}/survey/deleteSurvey");
				$("#hiddenForm").submit();
			}
			
			function addQuestAction(obj){
				$("#hiddenId").val($(obj).attr("attrId"));
				$("#hiddenForm").attr("action","${rc.contextPath}/question/listQuesitons");
				$("#hiddenForm").submit();
			}
			
		</script>
	
	</body>
	
</html>
