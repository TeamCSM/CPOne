<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String Ctx = request.getContextPath();
%>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <a class="navbar-brand" href="index.html">Voyage</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a href="/" class="nav-link">Home</a></li>
            <li class="nav-item dropdown">
              <a href="#" class="dropdown nav-link" data-toggle="dropdown">Tours</a>
				<ul class="dropdown-menu">
					<li class="nav-link"><a href="/cpone/tours/toursMain.ino?menu=pkg&menuParents=main"><strong>해외패키지</strong></a></li>
					<li class="nav-link"><a href="/cpone/tours/toursMain.ino?menu=free&menuParents=main"><strong>자유여행</strong></a></li>
					<li class="nav-link"><a href="/cpone/tours/toursMain.ino?menu=honey&menuParents=main"><strong>허니문</strong></a></li>
					<li class="nav-link"><a href="/cpone/tours/toursMain.ino?menu=clzGolf&menuParents=main"><strong>크루즈/골프</strong></a></li>
					<li class="nav-link"><a href="/cpone/tours/toursMain.ino?menu=koAir&menuParents=main"><strong>국내항공</strong></a></li>
					<li class="nav-link"><a href="/cpone/tours/toursMain.ino?menu=overAir&menuParents=main"><strong>해외항공</strong></a></li>
					<li class="nav-link"><a href="/cpone/tours/toursMain.ino?menu=kopkg&menuParents=main"><strong>국내패키지</strong></a></li>
				</ul>
			</li>
            
            
            
            
            <li class="nav-item"><a href="/cpone/hotels/hotelsMain.ino" class="nav-link">Hotels</a></li>
            <li class="nav-item"><a href="/cpone/service/serviceMain.ino" class="nav-link">Services</a></li>
            <li class="nav-item"><a href="/cpone/blog/blogMain.ino" class="nav-link">Blog</a></li>
            <li class="nav-item"><a href="/cpone/about/aboutMain.ino" class="nav-link">About</a></li>
            <li class="nav-item"><a href="/cpone/contact/contactMain.ino" class="nav-link">Contact</a></li>
            <c:if test="${not empty sessionScope.cp_User }">
	            <li class="nav-item"><a href="/cpone/user/logOut.ino" class="nav-link">${sessionScope.cp_User}</a></li>            		
            </c:if>
            <c:if test="${empty sessionScope.cp_User }">
	            <li class="nav-item"><a href="#" class="nav-link" data-toggle="modal" data-target="#login-modal">로그인</a></li>
            </c:if>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav --> 
  
    <!-- 로그인 폼 -->
    <div class="modal fade" id="login-modal">
	    <div class="modal-dialog">
	      <div class="modal-content">
	      
	        <!-- Modal Header -->
	        <div class="modal-header">
	        <center>  <span class="modal-title">CPOne 로그인</span></center>
	          <button type="button" class="close" data-dismiss="modal">×</button>
	        </div>
	        
	        <!-- Modal body -->
	        <div class="modal-body">
			<p class="text-intro"></p>
			<div class="form-div">
	         
				  <div class="form-group">
				    <input type="email" class="form-control" id="user_Email" name="user_Email" placeholder="이메일">
				  </div>
				  <div class="form-group">
				    
				    <input type="password" class="form-control" id="user_Password" name="user_Password" placeholder="패스워드">
				  </div>
				  <div class="form-check">
				    <label class="form-check-label">
				      <input class="form-check-input" type="checkbox"> 로그인 상태 유지
				    </label>
				  </div>
				  <div class="loginBtn">
				  	<button type="submit" class="btn btn-warning">로그인</button>
				  	<button type="submit" class="btn btn-warning">회원가입</button>
				  </div>
				  
				  
				  <br />
				  <button type="submit" class="btn btn-primary btn-block">facebook</button>
				  <button type="submit" class="btn btn-danger btn-block">instagram</button>
				
			</div>
	        </div>
	      </div>
	    </div>
	  </div>
    
    

    

    
    
    




