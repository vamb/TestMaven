<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<title>listClass</title>
	</head>
	<meta name="menu" content="listClass"/>
	<body>
	
	<h3 class="page-title">Class Manager</h3>
		
		<ul class="breadcrumb">
			<li>
				<i class="icon-home"></i>
				<a href="${rc.contextPath}/common/index">Home</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="${rc.contextPath}/cclass/listClass">Class List</a>
			</li>
		</ul>
		
		<div style="width:100%;margin-bottom:10px;">
			<div  style="margin-left:30px;">
				<a href="javascript:void(0)" onclick="newClass()"><span>Add New</span></a>
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
								<td>#Id</td>
								<th>Class Code</th>
								<th>Grade</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cclass" items="${list}" varStatus="loop">
								<tr>
									<td>${loop.index + 1}</td>
									<td>${cclass.classCode }</td>
									<td>${cclass.grade }</td>
									<td>
										<span><a class="tableModify" onclick="modifyClass('${cclass.id }')" href="javascript:void(0)">modify</a></span>
										<span>|</span>
										<span><a class="tableDelete" onclick="deleteClass('${cclass.id }')" href="javascript:void(0)">delete</a></span>
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
			
			function modifyClass(classId){
				$("#hiddenId").val(classId);
				$("#hiddenForm").attr("action","${rc.contextPath}/cclass/editClass");
				$("#hiddenForm").submit();
			}
			
			function deleteClass(classId){
				$("#hiddenId").val(classId);
				$("#hiddenForm").attr("action","${rc.contextPath}/cclass/deleteClass");
				$("#hiddenForm").submit();
			}
			
			function newClass(){
				$("#hiddenId").val("");
				$("#hiddenForm").attr("action","${rc.contextPath}/cclass/editClass");
				$("#hiddenForm").submit();
			}
			
		</script>
	</body>
</html>
