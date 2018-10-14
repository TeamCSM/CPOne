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
            <li class="nav-item"><a href="/cpone/tours/toursMain.ino" class="nav-link">Tours</a></li>
            <li class="nav-item"><a href="/cpone/hotels/hotelsMain.ino" class="nav-link">Hotels</a></li>
            <li class="nav-item"><a href="/cpone/service/serviceMain.ino" class="nav-link">Services</a></li>
            <li class="nav-item"><a href="/cpone/blog/blogMain.ino" class="nav-link">Blog</a></li>
            <li class="nav-item"><a href="/cpone/about/aboutMain.ino" class="nav-link">About</a></li>
            <li class="nav-item"><a href="/cpone/contact/contactMain.ino" class="nav-link">Contact</a></li>
            <c:choose>
            	<c:when test="${not empty sessionScope.astory_User} }">
					<li class="nav-item"><a href="#" class="nav-link">${sessionScope.astory_User} }</a></li>            		
            	</c:when>
            	<c:otherwise>
            		<li class="nav-item"><a href="#" class="nav-link" data-toggle="modal" data-target="#login-modal">로그인</a></li>	
            	</c:otherwise>
            </c:choose>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav --> 
  
    <!-- 로그인 폼 -->
    <div class="modal fade" id="login-modal" tabindex="-1" aria-hidden="true" aria-labelledby="myModalLabel" data-backdrop="static"  data-keyboard="false">
	  	  <div class="modal-dialog" role="document">
	  	  <div class="modal-content">
	  	  	<div class="loginmodal-container">
	  	  		<div class="modal-header">
	  	  			<h1>Login to Your Account</h1><br>
	  	  		</div>
			  <form action="/cpone/user/userLoginAction.ino" method="post">
				<input type="text" id="user_Email" name="user_Email" placeholder="Username">
				<input type="password" id="user_Password" name="user_Password" placeholder="Password">
				<input type="submit" name="login" class="login loginmodal-submit" value="Login" style="cursor: pointer;">
			  </form>
				
			  <div class="login-help">
				<a href="#">Register</a> - <a href="#">Forgot Password</a>
			  </div>
			  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
	  	  </div>
		</div>
    </div>

    

    
    
    




