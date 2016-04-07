<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="fk" uri="/tags/fk" %> --%>
<ul class="page-sidebar-menu">
	<li>
		<div class="sidebar-toggler hidden-phone"></div>
	</li>
	
	<li>
		<h3></h3>
	</li>
	<li class="start" id="home">
		<a href="${rc.contextPath}/home">
		<i class="icon-home"></i> 
		<span class="title">首页</span>
		<span class="selected"></span>
		</a>
	</li>
	
	<!-- <fk:hasPermission permissionCode="PRODUCT_MANAGEMENT"> -->
	<li class="">
		<a  href="javascript:;">
			<i class="icon-th-large"></i>
		<span class="title">商品管理</span>
		<span class="arrow"></span>
		</a>
		<ul class="sub-menu">
			<!-- <fk:hasPermission permissionCode="PRODUCT_LIST"> -->
			<li id="listpro">
				<a href="${rc.contextPath}/product/list">商品列表</a>
			</li>
			<!-- </fk:hasPermission> -->
			<!-- <fk:hasPermission permissionCode="ADD_PRO"> -->
			<li id="editpro">
				<a href="${rc.contextPath}/product/editpro">添加商品</a>
			</li>
			<!-- </fk:hasPermission> -->
			<!-- <fk:hasPermission permissionCode="PRODUCT_CONN"> -->
			<li id="listProConnection"><a href="${rc.contextPath}/productConn/list">商品关联</a></li>
			<!-- </fk:hasPermission> -->
			<!-- <fk:hasPermission permissionCode="LIST_BRAND"> -->
			<li id="brandList">
				<a href="${rc.contextPath}/product/brandList">商品品牌</a></li>
			<!-- </fk:hasPermission>
			<fk:hasPermission permissionCode="LIST_CATEGORY"> -->
			<li id="categoryList">
				<a  href="${rc.contextPath}/product/categoryList">
				商品分类</a>
			</li>
			<!-- </fk:hasPermission>
			<fk:hasPermission permissionCode="PRODUCT_TYPE"> -->
			<li id="ProductType">
				<a  href="${rc.contextPath}/product/type">
				商品类型</a>
			</li>
			<!-- </fk:hasPermission> -->
		</ul>
	</li>
	<!--  </fk:hasPermission> -->
	 
	<!-- <fk:hasPermission permissionCode="ORDER_MANAGEMENT"> -->
	<li>
		<a href="javascript:;">
			<i class="icon-list"></i>
			<span class="title">订单管理</span>
			<span class="arrow "></span>
		</a>
		<ul class="sub-menu">
			<!-- <fk:hasPermission permissionCode="ORDER_LIST"> -->
			<li  id="orderList">
				<a href="${rc.contextPath}/orders/list">
					订单列表</a>
			</li>
			<!-- </fk:hasPermission>
			<fk:hasPermission permissionCode="WAITSEND_ORDER_LIST"> -->
			<li id="waitSend">
				<a  href="${rc.contextPath}/orders/waitSend">
					待发货订单</a>
			</li>
			<!-- </fk:hasPermission> -->
		</ul>
	</li>
	<!-- </fk:hasPermission> -->
	
	<!-- <fk:hasPermission permissionCode="SALES_MANAGEMENT"> -->
	 	<li class="">
		<a  href="javascript:;">
		<i class="icon-gift"></i> 
		<span class="title">促销管理</span>
		<span class="arrow"></span>
		</a>
		<ul class="sub-menu">
				<!-- <fk:hasPermission permissionCode="COUPONS_MANAGEMENT"> -->
				<li  id="coupons">
					<a href="${rc.contextPath}/coupons/list">
						优惠券管理</a>
				</li>
				<!-- </fk:hasPermission>
				<fk:hasPermission permissionCode="ACTIVITY_MANAGEMENT"> -->
				<li  id="activityList">
					<a href="${rc.contextPath}/activity/list">
						折扣活动管理</a>
				</li>
				<!-- </fk:hasPermission> -->
		</ul>
	</li>
	<!-- </fk:hasPermission> -->
	
	<!-- <fk:hasPermission permissionCode="STORE_SHOP_LIST"> -->
	<li>
		<a href="javascript:;">
			<i class="icon-columns"></i>
			<span class="title">采购&库存</span>
			<span class="arrow "></span>
		</a>
		<ul class="sub-menu">
			<!-- <fk:hasPermission permissionCode="SHOP_LIST"> -->
			<li  id="storehouse">
				<a href="${rc.contextPath}/storehouse/shoplist">
					采购信息</a>
			</li>
			<!-- </fk:hasPermission>
			<fk:hasPermission permissionCode="STORE_LIST"> -->
			<li id="storelist">
				<a  href="${rc.contextPath}/storehouse/storelist">
					库存信息</a>
			</li>
			<!-- </fk:hasPermission>
			<fk:hasPermission permissionCode="INSERT_ORDER"> -->
			<li  id="simple-product-import">
				<a href="${rc.contextPath}/order/import-from-excel" title="导入商品编号,品牌,吊牌价供订单导入关联使用,和真正的产品信息不相关">
					商品导入</a>
			</li>
			<li  id="OrderList">
				<a href="${rc.contextPath}/order/show">
					订单导入</a>
			</li>
			<!-- </fk:hasPermission>
			<fk:hasPermission permissionCode="HISTORY_INSERT_MENU"> -->
			<li  id="OrderHistory">
				<a href="${rc.contextPath}/order/orderHistory">
					导入记录</a>
			</li>
			<!-- </fk:hasPermission> -->
		</ul>
	</li>
	<!-- </fk:hasPermission> -->
	
	<!-- <fk:hasPermission permissionCode="BRANNER_MANAGEMENT"> -->
	<li id="bannerMgr">
		<a href="javascript:;">
			<i class="icon-picture"></i>
			<span class="title">广告管理</span>
			<span class="arrow"></span>
		</a>
		<ul class="sub-menu">
			<!-- <fk:hasPermission permissionCode="BANNER_LIST"> -->
			<li  id="bannerList">
				<a href="${rc.contextPath}/homeBanner/bannerList">
					轮播广告管理</a>
			</li>
			<!-- </fk:hasPermission> -->
		</ul>
	</li>
	<!-- </fk:hasPermission>
	<fk:hasPermission permissionCode="REPORT_MANAGEMENT"> -->
	<li id="reportMgr">
		<a href="javascript:;">
			<i class="icon-bar-chart"></i>
			<span class="title">报表管理</span>
			<span class="arrow"></span>
		</a>
		<ul class="sub-menu">
			<!-- <fk:hasPermission permissionCode="REPORT_FUNCTION"> -->
			<li  id="productSales">
				<a href="${rc.contextPath}/report/searchProductSales">
					销量明细</a>
			</li>
			<!-- </fk:hasPermission> -->
		</ul>
	</li>
	<!-- </fk:hasPermission> -->
	
	<!-- <fk:hasPermission permissionCode="MEMBER_MANAGERMENT"> -->
	<li id="memberMgr">
		<a href="javascript:;">
			<i class="icon-user"></i>
			<span class="title">会员管理</span>
			<span class="arrow"></span>
		</a>
			<ul class="sub-menu">
			<!-- <fk:hasPermission permissionCode="LIST_MEMBER"> -->
			<li  id="memberlist">
				<a href="${rc.contextPath}/member/searchMemberList">
					会员列表</a>
			</li>
			<!-- </fk:hasPermission>
			<fk:hasPermission permissionCode="LIST_LEVEL"> -->
			<li  id="levelList">
				<a href="${rc.contextPath}/member/levelList">
					会员等级</a>
			</li>
			<!-- </fk:hasPermission> -->
		</ul>
	</li>
	<!-- </fk:hasPermission>
	<fk:hasPermission permissionCode="PERMISSION_MANAGEMENT"> -->
	<li class="">
		<a href="javascript:;">
			<i class="icon-key"></i>
			<span class="title">权限管理</span>
			<span class="arrow "></span>
		</a>
		<ul class="sub-menu">
			<!-- <fk:hasPermission permissionCode="LIST_ROLE"> -->
			<li id="Role">
				<a href="${rc.contextPath}/permission/role/list">
					角色列表</a>
			</li>
			<!-- </fk:hasPermission>
			<fk:hasPermission permissionCode="LIST_AUTH"> -->
			<li id="Auth">
				<a href="${rc.contextPath}/permission/auth/list">
					授权列表</a>
			</li>
			<!-- </fk:hasPermission> -->
		</ul>
	</li>
	<!-- </fk:hasPermission>
	<fk:hasPermission permissionCode="PERMISSION_MANAGEMENT"> -->
	<li class="">
		<a href="javascript:;">
			<i class="icon-key"></i>
			<span class="title">系统维护</span>
			<span class="arrow "></span>
		</a>
		<ul class="sub-menu">
			<li id="updateApk">
				<a href="${rc.contextPath}/system/updateApk">
					更新Android包</a>
			</li>
		</ul>
	</li>
	<!-- </fk:hasPermission> -->
<%--  
	    <li id="pushMgr">
	        <a href="${rc.contextPath}/push/">
	            <i class="icon-comments"></i>
	            <span class="title">推送管理</span>
	            <span class="selected"></span>
	        </a>
	    </li>

		<li class="">
			<a href="javascript:;">
			<i class="icon-table"></i> 
			<span class="title">用户管理</span>
			<span class="arrow "></span>
			</a>
			<ul class="sub-menu">
				<li  id="vipList">
					<a href="${rc.contextPath}/member">
					<i class="icon-eye-open"></i>
					用户列表</a>
				</li>
			</ul>
		</li>

	    <li class="">
			<a href="javascript:;">
				<i class="icon-table"></i>
				<span class="title">订单管理</span>
				<span class="arrow "></span>
			</a>
			<ul class="sub-menu">
				<li  id="OrderList">
					<a href="${rc.contextPath}/order/index">
						<i class="icon-eye-open"></i>
						订单列表</a>
				</li>
				<li  id="FoodOrderList">
					<a href="${rc.contextPath}/food/index">
						<i class="icon-eye-open"></i>
						菜品订单</a>
	
				</li>
			</ul>
		</li>

		<li class="">
			<a href="javascript:;">
				<i class="icon-table"></i>
				<span class="title">权限管理</span>
				<span class="arrow "></span>
			</a>
			<ul class="sub-menu">
				<li id="Function">
					<a href="${rc.contextPath}/permission/function/list">
						<i class="icon-eye-open"></i>
						系统功能</a>
				</li>
				<li id="Role">
					<a href="${rc.contextPath}/permission/role/list">
						<i class="icon-eye-open"></i>
						角色列表</a>
				</li>
				<li id="Auth">
					<a href="${rc.contextPath}/permission/auth/list">
						<i class="icon-eye-open"></i>
						授权列表</a>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="javascript:;">
			<i class="icon-cog"></i>
			<span class="title">用户设置</span>
			<span class="arrow "></span>
			</a>
			<ul class="sub-menu">
				<li id="setting" >
					<a href="${rc.contextPath}/pwd">修改密码</a>
				</li>
			</ul>
		</li>

		<li class="last">
			<a href="javascript:;">
			<i class="icon-table"></i> 
			<span class="title">系统设置</span>
			<span class="arrow "></span>
			</a>
			<ul class="sub-menu">
				<li  id="systemSettings">
					<a href="${rc.contextPath}/code/appCodeList">
					<i class="icon-eye-open"></i>
					版本设置</a>
				</li>
			</ul>
		</li> --%>

</ul>
 