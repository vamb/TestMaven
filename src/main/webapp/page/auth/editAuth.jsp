<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>editAuth</title>

	<style type="text/css">
		.self_label{
			width:100px;
			float:left;
			margin-right:20px;
			text-align:right;
			padding-right:10px;
			line-height:30px;
			font-family:Microsoft YaHei;
		}
	</style>
	
</head>
<meta name="menu" content="editAuth"/>

	<body>
		<h3 class="page-title">welcome to editAuth page</h2>
		
		<ul class="breadcrumb">
			<li>
				<i class="icon-home"></i>
				<a href="${rc.contextPath}/common/index">Home</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="${rc.contextPath}/auth/listAuths">Article List</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="javascript:void(0)" onclick="loadCurrend()">
					<if test="${not empty auth}">
					edit auth
					</if>
					<if test="${empty auth}">
					new auth
					</if>
				</a>
			</li>
		</ul>
		
		<form style="width:100%" role="form">
			
			<div style="width:100%; margin-bottom:20px;height:30px;">
				<div class="self_label">
					<div style="">userName:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<div style="">
						<input type="text" name="" value="${auth.userName }" id="" />
					</div>
				</div>
			</div>
			
			<div style="width:100%; margin-bottom:20px;height:30px;">
				<div class="self_label">
					<div style="">nickName:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<div style="">
						<input type="text" name="" value="${auth.nickName }" id="" />
					</div>
				</div>
			</div>
			
			<div style="width:100%; margin-bottom:20px;height:30px;">
				<div class="self_label">
					<div style="">password:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<div style="">
						<input type="text" name="" value="${auth.password }" id="" />
					</div>
				</div>
			</div>
			
			<div style="width:100%; margin-bottom:20px;height:30px;">
				<div class="self_label">
					<div style="">avatar:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<div style="">
						<input type="text" name="" value="${auth.avatar }" id="" />
					</div>
				</div>
			</div>
			
			<div style="width:100%; margin-bottom:20px;height:30px;">
				<div class="self_label">
					<div style="">status:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<div style="">
						<input type="text" name="" value="${auth.status }" id="" />
					</div>
				</div>
			</div>
			
			<div style="width:100%; margin-bottom:20px;height:30px;">
				<div class="self_label">
					<div style="">email:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<div style="">
						<input type="text" name="" value="${auth.email }" id="" />
					</div>
				</div>
			</div>
			
		</form>
		
		<script type="text/javascript">
			
			function loadCurrend(){
				alert("loadCurrend start");
			}
			
		</script>
	</body>
</html>
