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
					<i class="fa fa-table"></i> Movies List
				</h3>
				<ol class="breadcrumb">
					<li><i class="fa fa-home"></i><a href="AdminIndex.jsp">Home</a></li>
					<li><i class="fa fa-table"></i>Movies</li>
					<li><i class="fa fa-th-list"></i>Movies - list</li>
				</ol>
			</div>
		</div>


		<div class="col-sm-12">
			<section class="panel">
				<header class="panel-heading"> Striped Table </header>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Youtube ID</th>
							<th>Video Title</th>
							<th>View Count</th>
							<th>Status</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${listvideo}">
							<tr>
								<td>${item.id}</td>
								<td>${item.title}</td>
								<td>${item.views}</td>
								<td>${item.active?'Active':'Inactive'}</td>
								<td><a
									href="/PS12656_JAVA4/admin/video-edition/${item.id }">edit</a></td>
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

