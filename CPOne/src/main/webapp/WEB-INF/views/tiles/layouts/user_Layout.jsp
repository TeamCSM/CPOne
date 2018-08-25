<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%
	String Ctx = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CPOne | Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link rel="stylesheet" href="<%=Ctx %>/resources/user/css/style.css" />
<link rel="stylesheet" href="<%=Ctx %>/resources/user/js/jquery.js" />
</head>
<body>

	<!-- 헤더 -->
	<tiles:insertAttribute name="header" />
	
	<!-- 바디 -->
	<div class="wrapper">
		<tiles:insertAttribute name="body" />
	</div>

	<!-- 풋터 -->
	<tiles:insertAttribute name="footer" />

</body>
</html>