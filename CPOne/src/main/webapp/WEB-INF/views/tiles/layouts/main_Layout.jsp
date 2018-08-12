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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link rel="stylesheet" href="<%=Ctx %>/resources/main/css/style.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    $(window).on('scroll', function() {
      if($(window).scrollTop()) {
        $('nav').addClass('black');
      }
      else {
        $('nav').removeClass('black');
      }
    })
</script>
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