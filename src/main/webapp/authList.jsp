<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


<h3>this is a auth list page. successfully.</h3>

<c:forEach var="maps" items="${map}">
	${maps.key} ${maps.value }<br/><br/>
</c:forEach>

<table border=1>
<tr>
	<td>id</td>
	<td>userName</td>
	<td>nickName</td>
	<td>password</td>
	<td>avatar</td>
	<td>status</td>
</tr>
<c:forEach var="art" items="${list}">
<tr>
	<td>${art.id }</td>
	<td>${art.userName }</td>
	<td>${art.nickName }</td>
	<td>${art.password }</td>
	<td>${art.avatar }</td>
	<td>${art.status }</td>
</tr>
</c:forEach>
</table>

<p><a href="./../common/index"><input type="button" value="返回"/></a></p>

</body>
</html>
