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
					<i class="icon_genius"></i> Report
				</h3>
				<ol class="breadcrumb">
					<li><i class="fa fa-home"></i><a href="AdminIndex.jsp">Home</a></li>
					<li><i class="icon_genius"></i>Report</li>
			</div>
		</div>

		<!--tab nav start-->
		<section class="panel">
			<header class="panel-heading tab-bg-primary ">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#home">Favorite</a>
					</li>
					<li class=""><a data-toggle="tab" href="#about">Favorite
							User</a></li>
					<li class=""><a data-toggle="tab" href="#profile">Shared
							Friend</a></li>
				</ul>
			</header>
			<div class="panel-body">
				<div class="tab-content">
					<div id="home" class="tab-pane active">
						<section class="panel">
							<header class="panel-heading"> Favorite </header>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>#</th>
										<th>Video Title</th>
										<th>Favorite count</th>
										<th>Latest Date</th>
										<th>Oldest Date</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${report}">
										<tr>
											<td></td>
											<td>${item.group}</td>
											<td>${item.likes}</td>
											<td>${item.newest}</td>
											<td>${item.oldest}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</section>
					</div>





					<div id="about" class="tab-pane">
						<h3>Video Title?</h3>
						<form action="/PS12656_JAVA4/admin/report-favoriteUser" method="get">
						<select class="form-control m-bot15" name="Title">
							<c:forEach var="item" items="${videoFavorite}">
								<tr>
									<option value="${item.title}">${item.title}</option>
								</tr>
							</c:forEach>	
						</select>
							<button  type="submit">Search</button>
						</form>
					
						<hr>
						<section class="panel">
							<header class="panel-heading">Favorite User </header>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>#</th>
										<th>Username</th>
										<th>Fullname</th>
										<th>Email</th>
										<th>Favorite Date</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="item" items="${listFavoriteUser}">
									<tr>
										<td>#</td>
										<td>${item.id}</td>
										<td>${item.fullname}</td>
										<td>${item.email}</td>
										<td>${item.likedate}</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</section>

					</div>




					<div id="profile" class="tab-pane">
						<h3>Video Title?</h3>
						<select class="form-control m-bot15" >
							<c:forEach var="item" items="${shareFriend}">
								<tr>
									<option> ${item.title}</option>
								</tr>
							</c:forEach>
						</select>
						<hr>
						<section class="panel">
							<header class="panel-heading"> Shared Friend </header>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>#</th>
										<th>Sender Name</th>
										<th>Sender Email</th>
										<th>Receiver Email</th>
										<th>Send Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
										<td>@mdo</td>
									</tr>

								</tbody>
							</table>
						</section>
					</div>
				</div>
			</div>
		</section>
	</section>
</section>


<script>
	//knob
	$(".knob").knob();
</script>