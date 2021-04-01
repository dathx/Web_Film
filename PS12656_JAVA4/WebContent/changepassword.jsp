<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<style type="text/css">
.forget-pwd>a {
	color: #dc3545;
	font-weight: 500;
}

.forget-password .panel-default {
	padding: 31%;
	margin-top: -27%;
}

.forget-password .panel-body {
	padding: 15%;
	margin-bottom: -50%;
	background: #fff;
	border-radius: 5px;
	-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

.btnForget {
	background: #c0392b;
	border: none;
}

.forget-password .dropdown {
	width: 100%;
	border: 1px solid #ced4da;
	border-radius: .25rem;
}

.forget-password .dropdown button {
	width: 100%;
}

.forget-password .dropdown ul {
	width: 100%;
}

.pass_show {
	position: relative
}

.pass_show .ptxt {
	position: absolute;
	top: 50%;
	right: 10px;
	z-index: 1;
	color: #f36c01;
	margin-top: -10px;
	cursor: pointer;
	transition: .3s ease all;
}

.pass_show .ptxt:hover {
	color: #333333;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$('.pass_show').append('<span class="ptxt">Show</span>');  
	});
	  

	$(document).on('click','.pass_show .ptxt', function(){ 

	$(this).text($(this).text() == "Show" ? "Hide" : "Show"); 

	$(this).prev().attr('type', function(index, attr){return attr == 'password' ? 'text' : 'password'; }); 

	});  
</script>
</head>
<body>
	<div class="container forget-password">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<c:url var="url" value="/" />
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<a href="${url}index"><span aria-hidden="true">&times;</span></a>
				</button>
				<div class="panel-body">
					<div class="text-center">
						<!--   //<img src="https://i.ibb.co/rshckyB/car-key.png" alt="car-key" border="0"> -->
						<h2 class="text-center">Do you want change password?</h2>
						<p>You can change your password here.</p>
						<c:url var="url" value="/" />
						<form action="${url}change-password" id="register-form"
							role="form" class="form" method="post">
							<mark>${msg2}</mark>
							<!-- Thông báo -->
							<br>
							<br>
							<div class="row">
								<div class="col-sm-12">
									<div>
										<input type="text" value="${user.id}" name="username"
											class="form-control" disabled placeholder="User name?">
									</div>
									<br>
									<div class="form-group pass_show">
										<input type="password" value="${user.password}"
											name="password" class="form-control" disabled
											placeholder="Current Password?">
									</div>
									<div class="form-group pass_show">
										<input type="password" value="" name="newpw1"
											class="form-control" placeholder="New Password?">
									</div>
									<div class="form-group pass_show">
										<input type="password" value="" name="newpw2"
											class="form-control" placeholder="Confirm New Password?">
									</div>
								</div>
							</div>
							<div class="form-group">
								<input name="btnForget"
									class="btn btn-lg btn-primary btn-block btnForget"
									value="Change password" type="submit">
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>