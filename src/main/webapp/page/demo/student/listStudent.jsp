<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<title>listAuths</title>
	</head>
	<meta name="menu" content="listStudent"/>
	<body>
	
	<h3 class="page-title">Student Manager</h3>
		
		<ul class="breadcrumb">
			<li>
				<i class="icon-home"></i>
				<a href="${rc.contextPath}/common/index">Home</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="${rc.contextPath}/stu/listStu">Student List</a>
			</li>
		</ul>
		
		<div style="width:100%;margin-bottom:10px;">
			<div  style="margin-left:30px;">
				<a href="javascript:void(0)" onclick="newStudent()"><span>Add New</span></a>
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
								<th>Name</th>
								<th>Age</th>
								<th>Gender</th>
								<th>Class No.</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="stu" items="${list}" varStatus="loop">
								<tr>
									<td>${loop.index }</td>
									<td>${stu.name }</td>
									<td>${stu.age }</td>
									<td>${stu.genter }</td>
									<td>${stu.demoClass.classCode }</td>
									<td>
										<span><a class="tableModify" onclick="modifyStudent'${stu.id }')" href="javascript:void(0)">modify</a></span>
										<span>|</span>
										<span><a class="tableDelete" onclick="deleteStudent'${stu.id }')" href="javascript:void(0)">delete</a></span>
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
			
			function modifyStudent(stuId){
				$("#hiddenId").val(stuId);
				$("#hiddenForm").attr("action","${rc.contextPath}/stu/editStu");
				$("#hiddenForm").submit();
			}
			
			function deleteStudent(stuId){
				$("#hiddenId").val(stuId);
				$("#hiddenForm").attr("action","${rc.contextPath}/stu/deleteStu");
				$("#hiddenForm").submit();
			}
			
			function newStudent(){
				$("#hiddenId").val("");
				$("#hiddenForm").attr("action","${rc.contextPath}/stu/editStu");
				$("#hiddenForm").submit();
			}
			
		</script>
	</body>
</html>
