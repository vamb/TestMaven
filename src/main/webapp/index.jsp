<html>

<head>
<title>index page</title>
</head>
<script src="${rc.contextPath}/res/js/jquery-1.10.1.min.js"></script>
<body>
<h2>Hello World!</h2>

<p>add user form</p>
<form action="./../admin/saveAdmin" method="post">
	<p>username:<input type="text" name="name"/><br/></p>
	<p>password:<input type="password" name="password"/><br/></p>
	<input type="submit" value="submit"/>
</form>
<p>========================== </p>
<p>add article form</p>
<form action="./../article/saveArticle" method="post">
	<p>title</p>
	<p><input type="text" name="title"/></p>
	<p>content</p>
	<p><input type="text" name="content"/></p>
	<p>status</p>
	<p>
		<span>true</span><input type="radio" name="status" value="A" checked="checked"/>
		<span>false</span><input type="radio" name="status" value="I"/>
	</p>
	<p>deleted</p>
	<p>
		<span>yes</span><input type="radio" name="deleted" value="0" checked="checked"/>
		<span>no</span><input type="radio" name="deleted" value="1"/>
	</p>
	<input type="submit" value="submit"/>
</form>
<p>========================== </p>
<p>add auth form</p>
<form action="./../auth/saveAuth" method="post" id="authForm">
	<p>userName</p>
	<p><input type="text" name="userName" /></p>
	<p>nickName</p>
	<p><input type="text" name="nickName" /></p>
	<p>password</p>
	<p><input type="password" name="password" id="pass1" /></p>
	<p>password repeat</p>
	<p><input type="password" name="" id="pass2" /></p>
	<p>status</p>
	<p>
		<span>true</span><input type="radio" name="status" value="A" checked="checked"/>
		<span>false</span><input type="radio" name="status" value="I"/>
	</p>
	<input type="button" value="submit" id="authButton"/>
</form>

<p>=================================</p>

	<script type="text/javascript">
	$(document).ready(function(){
		alert("sfsdf");
	});
	</script>
</body>
</html>
