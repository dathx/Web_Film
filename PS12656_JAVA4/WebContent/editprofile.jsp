<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dathx - edit-profile</title>
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<script defer src="js/jquery.flexslider.js"></script>
<style type="text/css">
/* 	body{
	    background:#f3c538;
	} */
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
	<c:url var="url" value="/" />
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
						<!-- <img src="https://i.ibb.co/rshckyB/car-key.png" alt="car-key" border="0"> -->
						<h2 class="text-center">Do you want edit profile?</h2>
						<p>You can edit your profile here.</p>
						<br>
						<form action="${url}edit-profile" id="register-form" role="form"
							class="form" method="post">
							<div class="row">
								<div class="col-sm-12">
									<h3>
										<mark>${msg}</mark>
									</h3>
									<!-- Thông báo -->
									<br>
									<div>
										<input type="text" value="${user.id}" name="id"
											class="form-control" placeholder="User name?">
									</div>
									<br>
									<div class="form-group pass_show">
										<input type="password" value="${user.password}"
											name="password" class="form-control" placeholder="Password?">
									</div>
									<div class="">
										<input type="text" value="${user.fullname }" name="fullname"
											class="form-control" placeholder="Full name?">
									</div>
									<br>
									<div class="">
										<input type="email" value="${user.email }" name="email"
											class="form-control" placeholder="Email?">
									</div>
									<input type="hidden" value="${user.admin }" name="admin"><br>
									<hr>
								</div>
							</div>
							<div class="form-group">
								<input name="btnForget"
									class="btn btn-lg btn-primary btn-block btnForget"
									value="Edit profile" type="submit">
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