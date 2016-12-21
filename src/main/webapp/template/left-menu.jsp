<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="page-sidebar-menu">
	<li>
		<div class="sidebar-toggler hidden-phone"></div>
	</li>
	
	<li>
		<h3></h3>
	</li>
	<li class="" type="left" id="home">
		<a href="${rc.contextPath}/common/index">
		<i class="icon-home"></i> 
		<span class="title">首页</span>
		<span class="selected"></span>
		</a>
	</li>
	
	<li class="" type="left">
		<a  href="javascript:;">
			<i class="icon-th-large"></i>
		<span class="title">文章管理</span>
		<span class="arrow"></span>
		</a>
		<ul class="sub-menu">
			<li id="listArtilces">
				<a href="${rc.contextPath}/article/listArticles">文章列表</a>
			</li>
		</ul>
	</li>
	
	<li class="" type="left">
		<a  href="javascript:;">
			<i class="icon-th-large"></i>
		<span class="title">作者管理</span>
		<span class="arrow"></span>
		</a>
		<ul class="sub-menu">
			<li id="listAuths">
				<a href="${rc.contextPath}/auth/listAuths">作者列表</a>
			</li>
		<%-- 	<li id="editAuth">
				<a href="${rc.contextPath}/auth/editAuth">编辑作者</a>
			</li>
			<li id="newAuth">
				<a href="${rc.contextPath}/auth/newAuth">添加作者</a>
			</li> --%>
		</ul>
	</li>
	
	<li class="" type="left">
		<a  href="javascript:;">
			<i class="icon-th-large"></i>
		<span class="title">管理员管理</span>
		<span class="arrow"></span>
		</a>
		<ul class="sub-menu">
			<li id="listAdmins">
				<a href="${rc.contextPath}/admin/listAdmins">管理员列表</a>
			</li>
			<li id="editAdmin">
				<a href="${rc.contextPath}/admin/editAdmin">编辑管理员</a>
			</li>
			<li id="newAdmin">
				<a href="${rc.contextPath}/admin/newAdmin">添加管理员</a>
			</li>
		</ul>
	</li>

</ul>
 