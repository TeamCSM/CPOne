<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav>
	<div class="logo">LOGO</div>
	<ul>
		<li><a href="">Home</a></li>
		<li><a href="">About</a></li>
		<li><a href="">Blog</a></li>
		<li><a href="/cpone/dbTest.do">DB_TEST</a></li>
		<li><a href="/cpone/mail/mailMainView.do">Mail</a></li>
		<c:if test="${empty loginUserInfo.id }">
			<li><a class="active" class="lgnForm" role="button" data-toggle="modal" data-target="#lgn-modal" href="/cpone/user/userLogin.do">Log in</a></li>
		</c:if>
		<c:if test="${not empty loginUserInfo.id }">
			<a href="#">${loginUserInfo.id }님 환영합니다.</a>
		</c:if>
	</ul>
</nav>




