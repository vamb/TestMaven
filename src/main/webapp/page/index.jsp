<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<html>

<head>
	<title>index page root path</title>
</head>

<script src="${rc.contextPath}/res/js/jquery-1.10.1.min.js"></script>
<script src="${rc.contextPath}/res/js/jquery-extends.js"></script>

<meta name="menu" content="home"/>
<body>
	<%-- <h2>Hello World!</h2>
	
	<p>add user form</p>
	
	<form action="${rc.contextPath}/admin/saveAdmin" method="post">
		<p>username:<input type="text" name="name"/><br/></p>
		<p>password:<input type="password" name="password"/><br/></p>
		<input type="submit" value="submit"/>
	</form>
	
	<p>========================== </p>
	
	<p>add article form</p>
	
	<form action="${rc.contextPath}/article/saveArticle" method="post">
		<p>title</p>
		<p><input type="text" name="title"/></p>
		<p>content</p>
		<p><input type="text" name="content"/></p>
		<p>status</p>
		<p>
			<span>true</span><input type="radio" name="status" value="A" checked="checked"/>
			<span>false</span><input type="radio" name="status" value="I"/>
		</p>
		<p>deleted</p>
		<p>
			<span>yes</span><input type="radio" name="deleted" value="0" checked="checked"/>
			<span>no</span><input type="radio" name="deleted" value="1"/>
		</p>
		<input type="submit" value="submit"/>
	</form>
	
	<p>========================== </p>
	
	<p>add auth form</p>
	
	<form action="${rc.contextPath}/auth/saveAuth" method="post" id="authForm">
		<p>userName</p>
		<p><input type="text" name="userName" /></p>
		<p>nickName</p>
		<p><input type="text" name="nickName" /></p>
		<p>password</p>
		<p><input type="password" name="password" id="pass1" /></p>
		<p>password repeat</p>
		<p><input type="password" name="" id="pass2" /></p>
		<p>status</p>
		<p>
			<span>true</span><input type="radio" name="status" value="A" checked="checked"/>
			<span>false</span><input type="radio" name="status" value="I"/>
		</p>
		<input type="button" value="submit" id="authButton"/>
	</form>
	
	<input type="button" value="testButton" id="testButton"/>
	<p>=================================</p>

	<script type="text/javascript">
		$(document).ready(function(){
			var testMessage = "this is the testMessage";
		});
		
		$("#testButton").click(function(){
			$.msgSuccess("test jQuery extends success");
		});
	
	</script> --%>
	<div style="width:100%;height:300px;">
		<div style="width:100%;text-align:center;">
			<h1 style="line-height:300px;">This is a homepage</h1>
		</div>
	</div>
</body>
</html>
