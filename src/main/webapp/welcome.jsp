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

</body>
</html>
