<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<base href="${baseurl}"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Nunito:400,300,700'
	rel='stylesheet' type='text/css'>
<link href="assets/css/style.css" rel='stylesheet' type='text/css'
	media="all" />
<base>
</head>
<body>
	<h1>后台管理</h1>
	<div class="log">
		<div class="content1">
			<h2>登录</h2>
			<form action="user/select" method="post">
				<p><font color="white">${msg }</font><p>
				<font color="white">账号：</font><input type="text" name="userName"><br>
				<font color="white">密码：</font><input type="password" name="pwd"><br>
				<div class="button-row">
					<input type="submit" class="sign-in" value="登录"> 
					<div class="clear"></div>
				</div>
			</form>
		</div>
		<div class="clear"></div>
	</div>
</body>
</html>