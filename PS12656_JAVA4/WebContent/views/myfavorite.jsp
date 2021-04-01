<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<!-- nav -->
<div class="movies_nav">
	<div class="container">
		<nav class="navbar navbar-default">
			<div class="navbar-header navbar-left">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right"
				id="bs-example-navbar-collapse-1">
				<nav>
					<ul class="nav navbar-nav">
						<li class="w3_home_act"><a href="/PS12656_JAVA4/index">Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Genres <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<li>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="genres.jsp">Action</a></li>
											<li><a href="genres.jsp">Biography</a></li>
											<li><a href="genres.jsp">Crime</a></li>
											<li><a href="genres.jsp">Family</a></li>
											<li><a href="horror.jsp">Horror</a></li>
											<li><a href="genres.jsp">Romance</a></li>
											<li><a href="genres.jsp">Sports</a></li>
											<li><a href="genres.jsp">War</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="genres.jsp">Adventure</a></li>
											<li><a href="comedy.jsp">Comedy</a></li>
											<li><a href="genres.jsp">Documentary</a></li>
											<li><a href="genres.jsp">Fantasy</a></li>
											<li><a href="genres.jsp">Thriller</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="genres.jsp">Animation</a></li>
											<li><a href="genres.jsp">Costume</a></li>
											<li><a href="genres.jsp">Drama</a></li>
											<li><a href="genres.jsp">History</a></li>
											<li><a href="genres.jsp">Musical</a></li>
											<li><a href="genres.jsp">Psychological</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</li>
							</ul></li>
						<li class="active"><a href="/PS12656_JAVA4/myfavorite">My
								Favorite</a></li>
						<li><a href="news.jsp">news</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Country <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<li>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="genres.jsp">Asia</a></li>
											<li><a href="genres.jsp">France</a></li>
											<li><a href="genres.jsp">Taiwan</a></li>
											<li><a href="genres.jsp">United States</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="genres.jsp">China</a></li>
											<li><a href="genres.jsp">HongCong</a></li>
											<li><a href="genres.jsp">Japan</a></li>
											<li><a href="genres.jsp">Thailand</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="genres.jsp">Euro</a></li>
											<li><a href="genres.jsp">India</a></li>
											<li><a href="genres.jsp">Korea</a></li>
											<li><a href="genres.jsp">United Kingdom</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</li>
							</ul></li>
						<li><a href="contact.jsp">Contact</a></li>
						<li><a href="list.jsp">A - z list</a></li>
					</ul>
				</nav>
			</div>
		</nav>
	</div>
</div>
<!-- //nav -->
<!-- general -->
<div class="general_agileits_genres">
	<h4 class="latest-text w3_latest_text">My favorite</h4>
	<div class="container">
		<div class="agileits-single-top">
			<ol class="breadcrumb">
				<li><a href="/PS12656_JAVA4/index">Home</a></li>
				<li class="active">My Favorite</li>
			</ol>
		</div>
	</div>
	<div class="container">
		<div class="bs-example bs-example-tabs" role="tabpanel"
			data-example-id="togglable-tabs">
			<div id="myTabContent" class="tab-content">
				<div role="tabpanel" class="tab-pane fade active in" id="home"
					aria-labelledby="home-tab">
					<div class="w3_agile_featured_movies">

						<!--  -->
						<br> <br>
						<c:forEach var="favorite" items="${favorite}">
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="/PS12656_JAVA4/play-video/${favorite.id }" class="hvr-shutter-out-horizontal"><img
									src="images/${favorite.poster}" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="/PS12656_JAVA4/play-video/${favorite.id }">${favorite.title}</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>
											<i class="fa fa-eye" aria-hidden="true"></i>${favorite.views}</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<a href="/PS12656_JAVA4/unlike?usID=${sessionScope.user.id}&vdID=${favorite.id}"><span class="label label-danger">&nbsp;&nbsp;Unlike&nbsp;&nbsp;</span></a>&nbsp;&nbsp;&nbsp;
										<a href="#"><span class="label label-warning">Share</span></a>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
						</c:forEach>

						<!-- next-prev  -->
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="blog-pagenat-wthree">
			<ul>
				<li><a class="frist" href="#">Prev</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a class="last" href="#">Next</a></li>
			</ul>
		</div>
	</div>



	<!-- next-prev  -->
	<!--body wrapper start-->
	<div class="review-slider">
		<h4 class="latest-text">Top Movies Of Month</h4>
		<div class="container">
			<div class="w3_agile_banner_bottom_grid">
				<div id="owl-demo" class="owl-carousel owl-theme">
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
								src="images/m13.jpg" title="album-name" class="img-responsive"
								alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.jsp">Citizen Soldier</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>
										<i class="fa fa-eye" aria-hidden="true"></i> 6250
									</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
								src="images/m11.jpg" title="album-name" class="img-responsive"
								alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.jsp">X-Men</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>
										<i class="fa fa-eye" aria-hidden="true"></i> 6250
									</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
								src="images/m12.jpg" title="album-name" class="img-responsive"
								alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.jsp">Greater</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>
										<i class="fa fa-eye" aria-hidden="true"></i> 6250
									</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
								src="images/m7.jpg" title="album-name" class="img-responsive"
								alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.jsp">Light B/t Oceans</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>
										<i class="fa fa-eye" aria-hidden="true"></i> 6250
									</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
								src="images/m8.jpg" title="album-name" class="img-responsive"
								alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.jsp">The BFG</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>
										<i class="fa fa-eye" aria-hidden="true"></i> 6250
									</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
								src="images/m9.jpg" title="album-name" class="img-responsive"
								alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.jsp">Central Intelligence</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>
										<i class="fa fa-eye" aria-hidden="true"></i> 6250
									</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
								src="images/m10.jpg" title="album-name" class="img-responsive"
								alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.jsp">Don't Think Twice</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>
										<i class="fa fa-eye" aria-hidden="true"></i> 6250
									</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
								src="images/m17.jpg" title="album-name" class="img-responsive"
								alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.jsp">Peter</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>
										<i class="fa fa-eye" aria-hidden="true"></i> 6250
									</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
								src="images/m15.jpg" title="album-name" class="img-responsive"
								alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.jsp">Godas Compass</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>
										<i class="fa fa-eye" aria-hidden="true"></i> 6250
									</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--body wrapper end-->
		</div>
		<!-- //general -->
	</div>
</div>