<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String Ctx = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CPOne | Mail</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/vendor/linearicons/style.css">
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/vendor/metisMenu/metisMenu.css">
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/vendor/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css">
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/vendor/chartist/css/chartist.min.css">
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.css">
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/vendor/toastr/toastr.min.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="<%=Ctx %>/resources/mail/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="<%=Ctx %>/resources/mail/img/favicon.png">
	
	<!-- DATATABLES -->
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/vendor/datatables/css/DT_bootstrap.css" media="screen" />
	<link rel="stylesheet" href="<%=Ctx %>/resources/mail/vendor/datatables/css/styles.css" media="screen" />


</head>
<body>
	<div id="wrapper">
		<!-- 헤더 -->
		<tiles:insertAttribute name="header" />
		
		<!-- 바디 -->
		<div id="main-content">
			<tiles:insertAttribute name="body" />
		</div>
	
		<!-- 풋터 -->
		<tiles:insertAttribute name="footer" />
	</div>

	<!-- Javascript -->
	<script src="<%=Ctx %>/resources/mail/vendor/jquery/jquery.min.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/metisMenu/metisMenu.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/jquery-sparkline/js/jquery.sparkline.min.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/bootstrap-progressbar/js/bootstrap-progressbar.min.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/chartist/js/chartist.min.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.min.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/chartist-plugin-axistitle/chartist-plugin-axistitle.min.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/chartist-plugin-legend-latest/chartist-plugin-legend.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/toastr/toastr.js"></script>
	<script src="<%=Ctx %>/resources/mail/scripts/common.js"></script>
	
	<!-- DATATABLES -->
	<script src="<%=Ctx %>/resources/mail/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/datatables/js/DT_bootstrap.js"></script>
	<script src="<%=Ctx %>/resources/mail/vendor/datatables/js/scripts.js"></script>
	
</body>
</html>