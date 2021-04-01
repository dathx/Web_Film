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
					<i class="fa fa-table"></i> User List
				</h3>
				<ol class="breadcrumb">
					<li><i class="fa fa-home"></i><a href="AdminIndex.jsp">Home</a></li>
					<li><i class="fa fa-table"></i>User</li>
					<li><i class="fa fa-th-list"></i>User - list</li>
				</ol>
			</div>
		</div>


		<div class="col-sm-12">
			<section class="panel">
				<header class="panel-heading"> User List </header>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Username</th>
							<th>Password</th>
							<th>Full name</th>
							<th>EMail</th>
							<th>Role</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${listuser}">
							<tr>
								<td>${item.id}</td>
								<td>${item.password}</td>
								<td>${item.fullname}</td>
								<td>${item.email}</td>
								<td>${item.admin?'Admin':'User'}</td>
								<td><a href="/PS12656_JAVA4/admin/user-edition/${item.id }">edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
			<button type="submit" class="btn btn-primary">|<</button>
			<button type="submit" class="btn btn-primary"><<</button>
			<button type="submit" class="btn btn-primary">>></button>
			<button type="submit" class="btn btn-primary">>|</button>
		</div>

		<!-- page end-->
	</section>
</section>

<!-- container section end -->

