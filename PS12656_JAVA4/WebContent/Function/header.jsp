<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- header -->
	<div class="header">
		<div class="container">
			<c:url var="url" value="/" />
			<div class="w3layouts_logo">
				<a href="${url}index"><img alt="" src="${url}/images/LOGO.PNG"
					width="250px" height="130px"></a>
			</div>
			<br> <br>
			<!-- search -->
			<div class="w3_search">
				<form action="#" method="post">
					<input type="text" name="Search" placeholder="Search" required="">
					<input type="submit" value="Go">
				</form>
			</div>
			<div class="w3l_sign_in_register">
				<c:url var="url" value="/" />
				<ul>
					<li><i class="fa fa-phone" aria-hidden="true"></i>0939688714</li>
					<li><a href="${url}sign-in" id="login">Login</a></li>
					<!-- 					<li><a href="#" id="logout">Logout</a> -->

					<li class="dropdown"><a class="dropdown-toggle" href="#"
						id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Account</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a href="${url}edit-profile">Edit Profile</a></li>
							<li><a href="${url}change-password">Change Password</a></li>
							<li><a href="${url}sign-out">Logout</a></li>
						</ul></li>
					
               
				</ul>
				<!--đổi button đăng kí đăng nhập  -->
				<script type="text/javascript">
					function hideLogout() {
						var x = document.getElementById('navbarDropdown');
						if (x.style.display === "none") {
							x.style.display = "block";
						} else {
							x.style.display = "none";
						}
					}

					function hideLogin() {
						var x = document.getElementById('login');
						if (x.style.display === "none") {
							x.style.display = "block";
						} else {
							x.style.display = "none";
						}
					}
				</script>

				<script>
					hideLogout();
				</script>
				<!-- Mặc định ẩn nút logout -->
				<!--     {!IF((ISPICKVAL($User.UserType,'Guest')),'<script>hideLogout();</script>','<script>hideLogin();</script>')} -->

			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<!--Nếu có người đăng nhập thì hiện button account  -->
	<c:if test="${!empty sessionScope.user}">
		<!-- Nếu mà có tài khoản lưu trong session  thì hiện button accont-->
		<script>
			hideLogout();
			hideLogin()
		</script>
		<!-- Nếu đăng nhập thành công thì hiển thị account -->
	</c:if>

	<%-- 	<c:choose>
		<c:when test="${empty sessionScope.user }">
			<script>
			hideLogin()
			hideLogout();			
		</script>
	</c:when>
		<c:otherwise>
			<script>		
			hideLogout();
			hideLogin()
		</script>
		</c:otherwise>
	</c:choose> --%>


	<%-- <!-- //header -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">Register</div>
							  </div>
							  
							  <!-- sign-in -->							  
							  <div class="form">
								<h3>Login to your account</h3>
								<c:url var="url" value="/account"/>
								<form action="${url}/sign-in" method="post">
								<mark>${message}</mark><!-- Thông báo -->
																					
								  <input type="text" name="username" value="${username}" placeholder="Username" required="">
								  <input type="password" name="password" value="${password }" placeholder="Password" required="">
								  <input type="checkbox" name = "remember"> Remember me?
								  <hr>
								  <input type="submit" value="Login">
								  <!-- //Thông báo . nếu tin nhắn không rỗng thì alert tin nhắn -->
								  <c:if test="${not empty message}">
								    <script>alert("${message}");</script>
								</c:if>
								<c:if test="${message == 'Đăng nhập thành công!'}">
								    <script>hideLogout(); hideLogin()</script><!-- Nếu đăng nhập thành công thì hiển thị account -->
							    </c:if>
								</form>
							  </div>
							  
							  <!-- sign-up -->
							  <div class="form">
								<h3>Create an account</h3>
								<c:url var="url" value="/account"/>
								<form action="${url}/sign-up" enctype="multipart/form-data" method="post">
									<mark>${message1 }</mark><!-- Thoong báo -->
								  <input type="text" name="id" placeholder="Username" required="">
								  <input type="password" name="password" placeholder="Password" required="">
								  <input type="email" name="email" placeholder="Email Address" required="">
								  <input type="text" name="fullname" placeholder="Full name" required="">
								  <input name = "admin" type="hidden" value="false">
								  <input type="submit" value="Register">
								</form>
								
								<c:if test="${not empty message1}"><!-- Thông báo đăng kí -->
								    <script>alert("${message1}");</script>
								</c:if>
							  </div>
							  <!-- Quyên mật khẩu -->
							   <div class="cta"><a href="forgotpassword.jsp">Forgot your password?</a></div>
					  
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div> --%>
	<script>
		$('.toggle').click(function() {
			// Switches the Icon
			$(this).children('i').toggleClass('fa-pencil');
			// Switches the forms  
			$('.form').animate({
				height : "toggle",
				'padding-top' : 'toggle',
				'padding-bottom' : 'toggle',
				opacity : "toggle"
			}, "slow");
		});
	</script>



</body>
</html>