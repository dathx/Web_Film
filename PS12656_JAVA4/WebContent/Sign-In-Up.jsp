<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Dathx - King Of Movies</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="One Movies Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<c:url var="url" value="/" />
<link href="${url}/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${url}/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${url}/css/contactstyle.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="${url}/css/faqstyle.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${url}/css/single.css" rel='stylesheet' type='text/css' />
<link href="${url}/css/medile.css" rel='stylesheet' type='text/css' />
<!-- banner-slider -->
<link href="${url}/css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="${url}/css/popuo-box.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link href="${url}/css/font-awesome.min.css" rel="stylesheet" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

</head>
<body>
	<!-- //header -->
	<!-- bootstrap-pop-up -->
	<!-- 	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal"> -->
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				Sign In & Sign Up
				<c:url var="url" value="/" />
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<a href="${url}index"><span aria-hidden="true">&times;</span></a>
				</button>
			</div>
			<section>
				<div class="modal-body">
					<div class="w3_login_module">
						<div class="module form-module">
							<div class="toggle">
								<i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">Register</div>
							</div>

							<!-- sign-in -->
							<div class="form">
								<h3>Login to your account</h3>
								<c:url var="url" value="/" />
								<form action="${url}sign-in" method="get">
									<mark>${message}</mark>
									<!-- Thông báo -->

									<input type="text" name="username" value="${username}"
										placeholder="Username" required=""> <input
										type="password" name="password" value="${password }"
										placeholder="Password" required=""> <input
										type="checkbox" name="remember"> Remember me?
									<hr>
									<input type="submit" value="Login">
									<!-- //Thông báo . nếu tin nhắn không rỗng thì alert tin nhắn -->
									<%-- <c:if test="${not empty message}">
										<script>alert("${message}");</script>
									</c:if> --%>
									<c:if test="${message == 'Đăng nhập thành công!'}">
										<script>hideLogout(); hideLogin()</script>
										<!-- Nếu đăng nhập thành công thì hiển thị account -->
									</c:if>
								</form>
							</div>

							<!-- sign-up -->
							<div class="form">
								<h3>Create an account</h3>
								<c:url var="url" value="/" />
								<form action="${url}sign-up" enctype="multipart/form-data"
									method="post">
									<mark>${message1 }</mark>
									<!-- Thoong báo -->
									<input type="text" name="id" placeholder="Username" required="">
									<input type="password" name="password" placeholder="Password"
										required=""> <input type="email" name="email"
										placeholder="Email Address" required=""> <input
										type="text" name="fullname" placeholder="Full name"
										required=""> <input name="admin" type="hidden"
										value="false"> <input type="submit" value="Register">
								</form>

								<c:if test="${not empty message1}">
									<!-- Thông báo đăng kí -->
									<script>alert("${message1}");</script>
								</c:if>
							</div>
							<!-- Quyên mật khẩu -->
							<c:url var="url" value="/" />
							<div class="cta">
								<a href="${url}forgot-password">Forgot your password?</a>
							</div>

						</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<script>
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
	</script>
</body>
</html>