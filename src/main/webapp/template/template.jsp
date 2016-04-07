<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh" class="no-js">
<head>
	<meta charset="utf-8" />
	<title>test page | <sitemesh:write property='title' /></title>
	<link type="text/css" rel="stylesheet" href="${rc.contextPath}/page/media/css/bootstrap.min.css" /> 
	<script src="${rc.contextPath}/res/js/jquery-1.10.1.min.js"></script>
	<script src="${rc.contextPath}/template/warn_message.js"></script>
	<jsp:include page="import-res.jsp"/>
	<sitemesh:write property='head'/>
</head>
<body class="page-header-fixed">
	<jsp:include page="header.jsp"/>
	
	<div class="page-container page-content">
		<div class="page-sidebar nav-collapse collapse">
			<jsp:include page="left-menu.jsp"/>
		</div>


		<jsp:include page="core-plugin.jsp"/>

		<div class="page-content">
			<div class="container-fluid">
				<sitemesh:write property='body'/>
			</div>
		</div>
	</div>
	
<!-- demo关于提示消息 -->
<!-- 	<input type="button" value="warnButton" id="warnButton"/>
	<input type="button" value="errorButton" id="errorButton"/>
	<input type="button" value="successButton" id="successButton"/>
	<input type="button" value="infoButton" id="infoButton"/> -->

	<jsp:include page="core-plugin.jsp"/>
	
	<jsp:include page="footer.jsp"/>
	
	<script type="text/javascript">
		$(function(){
			var target = '<decorator:getProperty property="meta.menu"/>';
			var threeLevelMenu=["categoriesList","listProConnection","listpro","activityList","editpro","copypro","addBrand","brandList","ProductType","addShowProduct","showProductType","orderList","orderDetail",
						"showUpdateMerchantRemark","showUpdatePrice","send","showUpdateBuyAddress","waitSend","addOrders","coupons","couponsShow","discount"];
			if(threeLevelMenu.indexOf(target)>-1){
				$('#'+target).addClass("active").parent('.sub-menu').show().parent('li').addClass("active").find(':first').find('.arrow').addClass("open").parent().parent().parent(".sub-menu").show().parent('li').addClass("active").find(':first').append('<span class="selected"></span>').find('.arrow').addClass("open");
			}else{
				$('#'+target).addClass("active").parent('.sub-menu').show().parent('li').addClass("active").find(':first').append('<span class="selected"></span>').find('.arrow').addClass("open");
			}
		});
		
	/* 	$("#warnButton").click(function(){
			$.msgWarn("test");
		});
		$("#errorButton").click(function(){
			$.msgError("test");
		});
		$("#successButton").click(function(){
			$.msgSuccess("test");
		});
		$("#infoButton").click(function(){
			$.msgInfo("test");
		}); demo提示消息 */
		
	</script>
</body>
</html>