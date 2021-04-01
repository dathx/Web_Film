<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
</head>
<body>
	<div class="form-gap">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="panel panel-default">
						<c:url var="url" value="/" />
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<a href="${url}index"><span aria-hidden="true">&times;</span></a>
						</button>
						<div class="panel-body">
							<div class="text-center">
								<h3>
									<i class="fa fa-lock fa-4x"></i>
								</h3>
								<h2 class="text-center">Forgot Password?</h2>
								<p>You can reset your password here.</p>
								<div class="panel-body">

									<c:url var="url" value="/" />
									<form action="${url}forgot-password" id="register-form"
										role="form" autocomplete="off" class="form" method="post">
										<mark>${msg1}</mark>
										<!-- Thông báo -->
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon"><i class="fa fa-user"></i></span>
												<input id="username" name="username" placeholder="User name"
													class="form-control" type="text">
											</div>
										</div>

										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-envelope color-blue"></i></span> <input
													id="email" name="email" placeholder="Email address"
													class="form-control" type="email">
											</div>
										</div>
										<div class="form-group">
											<input name="recover-submit"
												class="btn btn-lg btn-primary btn-block" value="Retrieve"
												type="submit">
										</div>

										<!--  <input type="hidden" class="hide" name="token" id="token" value="">  -->
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>