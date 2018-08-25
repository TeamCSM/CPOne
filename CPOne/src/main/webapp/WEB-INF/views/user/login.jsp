<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String Ctx = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CPOne | Home</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link rel="stylesheet" href="<%=Ctx %>/resources/user/css/style.css" />
<link rel="stylesheet" href="<%=Ctx %>/resources/user/js/jquery.js" />
</head>
<body>

<div class="panda">
	<div class="ear"></div>
	<div class="face">
		<div class="eye-shade"></div>
		<div class="eye-white">
			<div class="eye-ball"></div>
		</div>
		<div class="eye-shade rgt"></div>
		<div class="eye-white rgt">
			<div class="eye-ball"></div>
		</div>
		<div class="nose"></div>
		<div class="mouth"></div>
	</div>
	<div class="body"></div>
	<div class="foot">
		<div class="finger"></div>
	</div>
	<div class="foot rgt">
		<div class="finger"></div>
	</div>
</div>
<form>
	<div class="hand"></div>
	<div class="hand rgt"></div>
	<h1>Panda Login</h1>
	<div class="form-group">
		<input required="required" class="form-control" /> <label
			class="form-label">Username </label>
	</div>
	<div class="form-group">
		<input id="password" type="password" required="required"
			class="form-control" /> <label class="form-label">Password</label>
		<p class="alert">Invalid Credentials..!!</p>
		<button class="btn">Login</button>
	</div>
</form>

</body>
</html>