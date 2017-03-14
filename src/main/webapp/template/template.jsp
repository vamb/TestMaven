<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh" class="no-js">
<head>
	<meta charset="utf-8" />
	<title>test page | <sitemesh:write property='title' /></title>
	<link type="text/css" rel="stylesheet" href="${rc.contextPath}/page/media/css/bootstrap.min.css" /> 
	<script src="${rc.contextPath}/res/js/jquery-1.10.1.min.js"></script>
	<script src="${rc.contextPath}/template/warn_message.js"></script>
	<input type="hidden" id="hiddenMenu" value = "<sitemesh:write property='meta.menu'/>" >
	<jsp:include page="import-res.jsp"/>
	<sitemesh:write property='head'/>
	<style type="text/css">
		body{
			font-family:Microsoft YaHei;
		}
		.page-content{
			/* min-height:500px !important;   */
		}
	</style>
</head>
<body class="page-header-fixed">
	<jsp:include page="header.jsp"/>
	
	<div class="page-container page-content">
		<div class="page-sidebar nav-collapse collapse">
			<jsp:include page="left-menu.jsp"/>
		</div>


		<jsp:include page="core-plugin.jsp"/>

		<div class="page-content" >
			<div class="container-fluid">
				<sitemesh:write property='body'/>
			</div>
		</div>
	</div>
	
	<jsp:include page="core-plugin.jsp"/>
	<jsp:include page="footer.jsp"/>
	
	<script type="text/javascript">
		$(function(){
			var target = $("#hiddenMenu").val();
			var threeLevelMenu=["listArtilces","editArticle","newArticle","listAuths","editAuth","newAuth","listAdmins","editAdmin","newAdmin","listSurveys"];
			if(threeLevelMenu.indexOf(target)>-1){
				$('#'+target).addClass("active").parent('.sub-menu').show().parent('li').addClass("active").find(':first').find('.arrow').addClass("open").parent().parent().parent(".sub-menu").show().parent('li').addClass("active").find(':first').append('<span class="selected"></span>').find('.arrow').addClass("open");
			}else{
				$('#'+target).addClass("active").parent('.sub-menu').show().parent('li').addClass("active").find(':first').append('<span class="selected"></span>').find('.arrow').addClass("open");
			}
			$(".page-sidebar-menu").on("click","li",function(){
				var target = $(this);
				var list = $("li");
				var i =0;
				$.each(list,function(i,val){
					$(val).attr("class","");
				});
				target.attr("class","active");
			});
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