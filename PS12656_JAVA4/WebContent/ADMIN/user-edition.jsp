<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-list-alt"></i> User Edition
				</h3>
				<ol class="breadcrumb">
					<li><i class="fa fa-home"></i><a href="AdminIndex.jsp">Home</a></li>
					<li><i class="fa fa-desktop"></i>User</li>
					<li><i class="fa fa-list-alt"></i>User-Edition</li>
				</ol>
			</div>
		</div>

		<section class="panel">
			<header class="panel-heading"> User Forms </header>
			<div class="panel-body">


				<c:url var="url" value="/admin/" />

				<form action="${url}/user-edition" method="post" role="form">
					<div class="form-group">
						<label for="username">Username</label> <input type="text"
							class="form-control" value="${form.id}" name="id" id="username"
							placeholder="Username">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" value="${form.password}"
							name="password" id="exampleInputPassword1" placeholder="Password">
					</div>

					<div class="form-group">
						<label for="fullname">Full Name</label> <input type="text"
							class="form-control" value="${form.fullname}" name="fullname"
							id="fullname" placeholder="Full Name">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" class="form-control" value="${form.email}"
							name="email" id="exampleInputEmail1" placeholder="Enter email">
					</div>
					<input type="hidden" value="${form.admin }" name="admin"><br>

					<button formaction="${url}user-update" type="submit"
						class="btn btn-primary">Update</button>
					<button formaction="${url}user-delete" type="submit"
						class="btn btn-primary">Delete</button>
				</form>


			</div>
		</section>


	</section>
	<!-- container section end -->