<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>editTeacher</title>

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
<meta name="menu" content="editTch"/>

	<body>
		<h3 class="page-title">welcome to editTch page</h2>
		
		<ul class="breadcrumb">
			<li>
				<i class="icon-home"></i>
				<a href="${rc.contextPath}/common/index">Home</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="${rc.contextPath}/tch/listTch">Teacher List</a>
				<i class="icon-angle-right"></i>
			</li>
			<li>
				<a href="javascript:void(0)" onclick="loadCurrend()">
					<c:if test="${not empty tch.id }">
					edit teacher
					</c:if>
					<c:if test="${empty tch.id }">
					new teacher
					</c:if>
				</a>
			</li>
		</ul>
		<span id="backId" style="display:none;" >${tch.id }</span>
		<form id="inputForm" style="width:100%" role="form">
			<input type="hidden" name="id" value="${tch.id }" />
			<input type="hidden" name="isActive" value="${tch.isActive }" />
			<div style="width:100%; margin-bottom:20px;height:30px;width:250px;">
				<div class="self_label">
					<div style="">Teacher Name:</div>
				</div>
				<div style="width:50px;float:left;text-algin:left;">
					<div style="">
						<input type="text" name="name" value="${tch.name }" id="" />
					</div>
				</div>
			</div>
			
		</form>
		
		<div style="width:100%;height:100px;background-color:#efefef;margin-top:30px;">
			<div style="width:100%;line-height:80px;margin-top:20px;height:80px;">
				<button type="button" style="margin-left:20px;" onclick="submitAction()" class="btn btn-primary">submit</button>
				<button type="button" style="margin-left:20px;" onclick="resetAction()" class="btn btn-primary">reset</button>
				<button type="button" style="margin-left:20px;" onclick="cancelAction()" class="btn btn-primary">cancel</button>
			</div>
		</div>
		
		<form id="hiddenForm" action="" method="post">
			<input type="hidden" id="hiddenId" name="id" value="${tch.id }" />
		</form>
		<script type="text/javascript">
			
			function loadCurrend(){
				$("#hiddenForm").attr("action", "${rc.contextPath}/tch/editTch");
				$("#hiddenForm").submit();
			}
			
			function submitAction(){
				$("#inputForm").attr("action", "${rc.contextPath}/tch/saveTch");
				$("#inputForm").submit();
			}
			
			function resetAction(){
				$("#hiddenId").val($("#backId").text());
				$("#hiddenForm").attr("action", "${rc.contextPath}/tch/editTch");
				$("#hiddenForm").submit();
			}
			
			function cancelAction(){
				$("#inputForm").attr("action", "${rc.contextPath}/tch/editTch");
				$("#inputForm").submit();
			}
			
			function passCheck(obj){
				
			}
			
			function confirmCheck(obj){
				
			}
			
		</script>
	</body>
</html>
