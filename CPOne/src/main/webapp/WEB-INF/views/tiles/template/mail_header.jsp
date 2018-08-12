<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String Ctx = request.getContextPath();
%>
<!-- NAVBAR -->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-btn">
			<button type="button" class="btn-toggle-offcanvas"><i class="lnr lnr-menu"></i></button>
		</div>
		<!-- logo -->
		<div class="navbar-brand">
			<a href="/cpone/front/mail/mailMainView.do"><img src="<%=Ctx %>/resources/mail/img/logo.png" alt="Logo" class="img-responsive logo"></a>
		</div>
		<!-- end logo -->
		<div class="navbar-right">
			<!-- search form -->
			<form id="navbar-search" class="navbar-form search-form">
				<input value="" class="form-control" placeholder="Search here..." type="text">
				<button type="button" class="btn btn-default"><i class="fa fa-search"></i></button>
			</form>
			<!-- end search form -->
			<!-- navbar menu -->
			<div id="navbar-menu">
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
							<i class="lnr lnr-alarm"></i>
							<span class="notification-dot"></span>
						</a>
						<ul class="dropdown-menu notifications">
							<li class="header"><strong>You have 7 new notifications</strong></li>
							<li>
								<a href="#">
									<div class="media">
										<div class="media-left">
											<i class="fa fa-fw fa-flag-checkered text-muted"></i>
										</div>
										<div class="media-body">
											<p class="text">Your campaign <strong>Holiday Sale</strong> is starting to engage potential customers.</p>
											<span class="timestamp">24 minutes ago</span>
										</div>
									</div>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="media">
										<div class="media-left">
											<i class="fa fa-fw fa-exclamation-triangle text-warning"></i>
										</div>
										<div class="media-body">
											<p class="text">Campaign <strong>Holiday Sale</strong> is nearly reach budget limit.</p>
											<span class="timestamp">2 hours ago</span>
										</div>
									</div>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="media">
										<div class="media-left">
											<i class="fa fa-fw fa-bar-chart text-muted"></i>
										</div>
										<div class="media-body">
											<p class="text">Website visits from Facebook is 27% higher than last week.</p>
											<span class="timestamp">Yesterday</span>
										</div>
									</div>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="media">
										<div class="media-left">
											<i class="fa fa-fw fa-check-circle text-success"></i>
										</div>
										<div class="media-body">
											<p class="text">Your campaign <strong>Holiday Sale</strong> is approved.</p>
											<span class="timestamp">2 days ago</span>
										</div>
									</div>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="media">
										<div class="media-left">
											<i class="fa fa-fw fa-exclamation-circle text-danger"></i>
										</div>
										<div class="media-body">
											<p class="text">Error on website analytics configurations</p>
											<span class="timestamp">3 days ago</span>
										</div>
									</div>
								</a>
							</li>
							<li class="footer"><a href="#" class="more">See all notifications</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
							<i class="lnr lnr-cog"></i>
						</a>
						<ul class="dropdown-menu user-menu menu-icon">
							<li class="menu-heading">ACCOUNT SETTINGS</li>
							<li><a href="#"><i class="fa fa-fw fa-edit"></i> <span>Basic</span></a></li>
							<li><a href="#"><i class="fa fa-fw fa-bell"></i> <span>Notifications</span></a></li>
							<li><a href="#"><i class="fa fa-fw fa-sliders"></i> <span>Preferences</span></a></li>
							<li><a href="#"><i class="fa fa-fw fa-lock"></i> <span>Privacy</span></a></li>
							<li class="menu-heading">BILLING</li>
							<li><a href="#"><i class="fa fa-fw fa-file-text-o"></i> <span>Invoices</span></a></li>
							<li><a href="#"><i class="fa fa-fw fa-credit-card"></i> <span>Payments</span></a></li>
							<li><a href="#"><i class="fa fa-fw fa-refresh"></i> <span>Renewals</span></a></li>
							<li class="menu-button">
								<a href="#" class="btn btn-primary"><i class="fa fa-rocket"></i> UPGRADE PLAN</a>
							</li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
							<i class="lnr lnr-question-circle"></i>
						</a>
						<ul class="dropdown-menu user-menu">
							<li>
								<form class="search-form help-search-form">
									<input value="" class="form-control" placeholder="How can we help?" type="text">
									<button type="button" class="btn btn-default"><i class="fa fa-search"></i></button>
								</form>
							</li>
							<li class="menu-heading">HOW-TO</li>
							<li><a href="#">Setting up Campaign</a></li>
							<li><a href="#">Understanding Website Analytics</a></li>
							<li><a href="#">Boost Your Sales</a></li>
							<li><a href="#">Knowing Your Audience</a></li>
							<li class="menu-heading">ACCOUNT</li>
							<li><a href="#">Change Password</a></li>
							<li><a href="#">Privacy &amp; Security</a></li>
							<li><a href="#">Membership</a></li>
							<li class="menu-heading">BILLING</li>
							<li><a href="#">Setup Payment</a></li>
							<li><a href="#">Auto-Renewal Program</a></li>
							<li><a href="#">Cancellation</a></li>
							<li class="menu-button">
								<a href="#" class="btn btn-primary"><i class="fa fa-question-circle"></i> HELP CENTER</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<!-- end navbar menu -->
		</div>
	</div>
</nav>
<!-- END NAVBAR -->
<!-- LEFT SIDEBAR -->
<div id="left-sidebar" class="sidebar">
	<button type="button" class="btn btn-xs btn-link btn-toggle-fullwidth">
		<span class="sr-only">Toggle Fullwidth</span>
		<i class="fa fa-angle-left"></i>
	</button>
	<div class="sidebar-scroll">
		<div class="user-account">
			<img src="<%=Ctx %>/resources/mail/img/user.png" class="img-responsive img-circle user-photo" alt="User Profile Picture">
			<div class="dropdown">
				<a href="#" class="dropdown-toggle user-name" data-toggle="dropdown">Hello, <strong>Austin Hoffman</strong> <i class="fa fa-caret-down"></i></a>
				<ul class="dropdown-menu dropdown-menu-right account">
					<li><a href="#">My Profile</a></li>
					<li><a href="#">Messages</a></li>
					<li><a href="#">Settings</a></li>
					<li class="divider"></li>
					<li><a href="#">Logout</a></li>
				</ul>
			</div>
		</div>
		<nav id="left-sidebar-nav" class="sidebar-nav">
			<ul id="main-menu" class="metismenu">
				<li class="active"><a href="index.html"><i class="lnr lnr-home"></i> <span>받은 메일함</span></a></li>
				<li class="">
					<a href="#uiElements" class="has-arrow" aria-expanded="false"><i class="lnr lnr-magic-wand"></i> <span>보낸 메일함</span></a>
					<ul aria-expanded="true">
						<li class=""><a href="ui-tabs.html">Tabs</a></li>
						<li class=""><a href="ui-buttons.html">Buttons</a></li>
						<li class=""><a href="ui-bootstrap.html">Bootstrap UI</a></li>
						<li class=""><a href="ui-icons.html"><span>Icons</span></a></li>
					</ul>
				</li>
				<li class="">
					<a href="#subPages" class="has-arrow" aria-expanded="false"><i class="lnr lnr-file-empty"></i> <span>임시보관함</span></a>
					<ul aria-expanded="true">
						<li class=""><a href="page-profile.html">User Profile</a></li>
						<li class=""><a href="page-login.html">Login</a></li>
						<li class=""><a href="page-register.html">Register</a></li>
						<li class=""><a href="page-lockscreen.html">Lockscreen</a></li>
						<li class=""><a href="page-forgot-password.html">Forgot Password</a></li>
						<li class=""><a href="page-404.html">Page 404</a></li>
						<li class=""><a href="page-500.html">Page 500</a></li>
					</ul>
				</li>
				<li class="">
					<a href="#forms" class="has-arrow" aria-expanded="false"><i class="lnr lnr-pencil"></i> <span>내게쓴메일함</span></a>
					<ul aria-expanded="true">
						<li class=""><a href="forms-validation.html">Form Validation</a></li>
						<li class=""><a href="forms-advanced.html">Advanced Form Elements</a></li>
						<li class=""><a href="forms-basic.html">Basic Form Elements</a></li>
						<li class=""><a href="forms-dragdropupload.html">Drag &amp; Drop Upload</a></li>
						<li class=""><a href="forms-texteditor.html">Text Editor</a></li>
					</ul>
				</li>
				<li class="">
					<a href="#charts" class="has-arrow" aria-expanded="false"><i class="lnr lnr-chart-bars"></i> <span>내 메일함</span></a>
					<ul aria-expanded="true">
						<li class=""><a href="charts-chartist.html">Chartist</a></li>
						<li class=""><a href="charts-sparkline.html">Sparkline Chart</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
</div>
<!-- END LEFT SIDEBAR -->