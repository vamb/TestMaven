<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh" class="no-js">
<head>
	<meta charset="utf-8" />
	<title><decorator:title/></title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="heinqi" name="author" />
	<link rel="shortcut icon" href="../../res/media/image/favicon.ico" />
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
	<input type="button" value="msgButton" id="msgButton"/>
	<script type="text/javascript">
	$(document).ready(function(){
		setTimout(test(),200);
		function test()
		{
		alert(1);
		} 
	});
	
		$("#msgButton").click(function(){
			$.msgWarn("test");
		});
	</script>
</body>
</html>