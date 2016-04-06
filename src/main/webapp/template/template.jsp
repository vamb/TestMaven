<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh" class="no-js">
<head>
	<meta charset="utf-8" />
	<title><decorator:title/></title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="heinqi" name="author" />
	<link type="text/css" rel="stylesheet" href="./../page/media/css/bootstrap.min.css" /> 
	<script src="./../res/js/jquery-1.10.1.min.js"></script>
	 <script src="./warn_message.js"></script>
	<sitemesh:write property='head'/>
</head>
<body class="page-header-fixed">ssfsdf
	<div class="page-container page-content">
		<div>
			<div class="container-fluid">
				<sitemesh:write property='body'/>
			</div>
		</div>
	</div>
	<input type="button" value="warnButton" id="warnButton"/>
	<input type="button" value="errorButton" id="errorButton"/>
	<input type="button" value="successButton" id="successButton"/>
	<input type="button" value="infoButton" id="infoButton"/>
	
	<script type="text/javascript">
	$(document).ready(function(){

	});
		$("#warnButton").click(function(){
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
		});
	</script>
</body>
</html>