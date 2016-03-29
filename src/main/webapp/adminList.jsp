<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
<h2>This is adminList page</h2>

<h3>this is a admin list page. successfully.</h3>

<c:forEach var="maps" items="${map}">
	${maps.key} ${maps.value }<br/><br/>
</c:forEach>

<table border=1>
<tr>
	<td>id</td>
	<td>name</td>
	<td>password</td>
	<td>level</td>
</tr>
<c:forEach var="art" items="${list}">
<tr>
	<td>${art.id }</td>
	<td>${art.name }</td>
	<td>${art.password }</td>
	<td>${art.level }</td>
</tr>
</c:forEach>
</table>

<p><a href="./../common/index"><input type="button" value="返回"/></a></p>

</body>
</html>
