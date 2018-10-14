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
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700" rel="stylesheet">

    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/animate.css">
    
    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/magnific-popup.css">

    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/aos.css">

    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/ionicons.min.css">

    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/flaticon.css">
    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/icomoon.css">
    <link rel="stylesheet" href="<%=Ctx %>/resources/main/css/style.css">
    <link rel="stylesheet" href="<%=Ctx %>/resources/user/login.css">


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



  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="<%=Ctx %>/resources/main/js/jquery.min.js"></script>
  <script src="<%=Ctx %>/resources/main/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="<%=Ctx %>/resources/main/js/popper.min.js"></script>
  <script src="<%=Ctx %>/resources/main/js/bootstrap.min.js"></script>
  <script src="<%=Ctx %>/resources/main/js/jquery.easing.1.3.js"></script>
  <script src="<%=Ctx %>/resources/main/js/jquery.waypoints.min.js"></script>
  <script src="<%=Ctx %>/resources/main/js/jquery.stellar.min.js"></script>
  <script src="<%=Ctx %>/resources/main/js/owl.carousel.min.js"></script>
  <script src="<%=Ctx %>/resources/main/js/jquery.magnific-popup.min.js"></script>
  <script src="<%=Ctx %>/resources/main/js/aos.js"></script>
  <script src="<%=Ctx %>/resources/main/js/jquery.animateNumber.min.js"></script>
  <script src="<%=Ctx %>/resources/main/js/bootstrap-datepicker.js"></script>
  <script src="<%=Ctx %>/resources/main/js/jquery.timepicker.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="<%=Ctx %>/resources/main/js/google-map.js"></script>
  <script src="<%=Ctx %>/resources/main/js/main.js"></script>
	
	
</body>
</html>