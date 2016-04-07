<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@page import="com.heinqi.shop.webutils.LoginInterceptor" %>
<%@page import="com.heinqi.crabking.model.Admin" %> --%>
<%-- 
<%
	response.setHeader("Cache-Control","no-cache");
	response.setDateHeader("Expires",0);
%> --%>
<div class="header navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a class="brand" href="<c:url value="/home"/>">
				<img src="<c:url value="/res/images/logo.png"/>" alt="logo"/>
			</a>
			<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
			<img src="<c:url value="/res/media/image/menu-toggler.png"/>" alt="" />
			</a>
			<ul class="nav pull-right">
				<li class="dropdown user">
					<%-- <a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<img alt="" src="<c:url value="/res/images/avata_small03r.png"/>" width="32" height="32" />
						<%
						Admin admin = (Admin)request.getSession().getAttribute(LoginInterceptor.class.getName());
						%>
					<span class="name"><%=admin.getUserName()%></span>
					<i class="icon-angle-down"></i>
					</a> --%>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/logoff"/>"><i class="icon-key"></i>退出</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>

