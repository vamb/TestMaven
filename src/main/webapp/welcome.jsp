<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
<h2>welcome page</h2>

this is my first page.


<h3>this is a welcome page. successfully.</h3>

<c:forEach var="maps" items="${map}">
	${maps.key} ${maps.value }<br/><br/>
</c:forEach>

<table border=1>
<tr>
	<td>id</td>
	<td>title</td>
	<td>content</td>
	<td>status</td>
	<td>authId</td>
	<td>deleted</td>
</tr>
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

</table>
</body>
</html>
