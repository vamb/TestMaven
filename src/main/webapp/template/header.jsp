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
<div class="header navbar navbar-inverse navbar-fixed-top" style="width:100% !important;">
	<div class="navbar-inner">  
		<div class="container-fluid" style="width:100%;">
			<a class="brand" href="<c:url value="/home"/>">
				<img src="<c:url value="/page/media/image/logo.png"/>" alt="logo"/>
			</a>
			<a href="javascript:void(0)" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
			<img src="<c:url value="/page/media/image/menu-toggler.png"/>" alt="" />
			</a>
			<ul class="nav pull-right">
				<li class="dropdown user">
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/logoff"/>"><i class="icon-key"></i>退出</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>

