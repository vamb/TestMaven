<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<title>listAuths</title>
	</head>
	<meta name="menu" content="listAuths"/>
	<body>
	
	<h3 class="page-title">作者管理</h3>
		
		<ul class="breadcrumb">
			<li>
				<i class="icon-home"></i>
				<a href="${rc.contextPath}/common/index">Home</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="${rc.contextPath}/auth/listAuths">Auth List</a>
			</li>
		</ul>
		
		<div style="width:100%;margin-bottom:10px;">
			<div  style="margin-left:30px;">
				<a href="javascript:void(0)" onclick="newAuth()"><span>Add New</span></a>
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
								<th>userName</th>
								<th>nickName</th>
								<th class="hidden-480">password</th>
								<th>avatar</th>
								<th>status</th>
								<th>email</th>
								<th>Opertion</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="auth" items="${list}">
								<tr>
									<td>${auth.userName }</td>
									<td>${auth.nickName }</td>
									<td>${auth.password }</td>
									<td>${auth.avatar }</td>
									<td>${'A' eq auth.status ?'Active':'inactive' }</td>
									<td>${auth.email }</td>
									<td>
										<span><a class="tableModify" onclick="modifyAuth('${auth.id }')" href="javascript:void(0)">modify</a></span>
										<span>|</span>
										<span><a class="tableDelete" onclick="deleteAuth('${auth.id }')" href="javascript:void(0)">delete</a></span>
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
			
			function modifyAuth(authId){
				$("#hiddenId").val(authId);
				$("#hiddenForm").attr("action","${rc.contextPath}/auth/editAuth");
				$("#hiddenForm").submit();
			}
			
			function deleteAuth(authId){
				$("#hiddenId").val(authId);
				$("#hiddenForm").attr("action","${rc.contextPath}/auth/deleteAuth");
				$("#hiddenForm").submit();
			}
			
			function newAuth(){
				$("#hiddenId").val("");
				$("#hiddenForm").attr("action","${rc.contextPath}/auth/editAuth");
				$("#hiddenForm").submit();
			}
			
		</script>
	</body>
</html>
