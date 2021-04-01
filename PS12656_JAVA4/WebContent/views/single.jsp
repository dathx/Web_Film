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
							<li><a href="/PS12656_JAVA4/myfavorite">My Favorite</a></li>
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



	<!-- single -->
	<div class="single-page-agile-main">
		<div class="container">
			<!-- /w3l-medile-movies-grids -->
			<div class="agileits-single-top">
				<ol class="breadcrumb">
					<li><a href="/PS12656_JAVA4/index">Home</a></li>
					<li class="active">Single</li>
				</ol>
			</div>
			
			
			<div class="single-page-agile-info">
				<!-- /movie-browse-agile -->			
				<div class="show-top-grids-w3lagile">
				
					<c:forEach var="item" items="${play}">
					<div class="col-sm-8 single-left">
						<div class="song">		
							<div class="song-info">
								<h3>${item.title }</h3>
							</div>
							<div class="video-grid-single-page-agileits">
								<div data-video="../${item.id }" id="video">
									<img src="../images/5.jpg" alt="" class="img-responsive" />
								</div>
							</div>
						</div>

						<div class="mid-2 agile_mid_2_home">
							<div class="icon-box col-md-3 col-sm-4">
								<a class="" href="#"><i class="fa fa-heart"></i>Add to
									favorite</a>
							</div>
							<div class="icon-box col-md-3 col-sm-4">
								<a class="" href="#share-square"><i
									class="fa fa-share-square"></i>Share with friend</a>
							</div>
							<div class="clearfix"></div>
						</div>

						<div class="all-comments">
							<div class="all-comments-info">
								<h3>Description</h3>
								<p>${item.description}</p>
								<br>
								<hr>
							</div>
							<div class="media-grids">
								<div class="media">
									<h5>TOM BROWN</h5>
									<div class="media-left">
										<a href="#"> <img src="images/user.jpg" title="One movies"
											alt=" " />
										</a>
									</div>
									<div class="media-body">
										<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
											ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
											pretium hendrerit</p>
										<span>View all posts by :<a href="#"> Admin </a></span>
									</div>
								</div>
								<div class="media">
									<h5>MARK JOHNSON</h5>
									<div class="media-left">
										<a href="#"> <img src="images/user.jpg" title="One movies"
											alt=" " />
										</a>
									</div>
									<div class="media-body">
										<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
											ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
											pretium hendrerit</p>
										<span>View all posts by :<a href="#"> Admin </a></span>
									</div>
								</div>
								<div class="media">
									<h5>STEVEN SMITH</h5>
									<div class="media-left">
										<a href="#"> <img src="images/user.jpg" title="One movies"
											alt=" " />
										</a>
									</div>
									<div class="media-body">
										<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet
											ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex
											pretium hendrerit</p>
										<span>View all posts by :<a href="#"> Admin </a></span>
									</div>
								</div>

							</div>
						</div>
					</div>
					</c:forEach>
					<div class="col-md-4 single-right">
						<h3>Up Next</h3>
						<div class="single-grid-right">
							<div class="single-right-grids">
								<div class="col-md-4 single-right-grid-left">
									<a href="single.jsp"><img src="images/m1.jpg" alt="" /></a>
								</div>
								<div class="col-md-8 single-right-grid-right">
									<a href="single.jsp" class="title"> Nullam interdum metus</a>
									<p class="author">
										<a href="#" class="author">John Maniya</a>
									</p>
									<p class="views">2,114,200 views</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="single-right-grids">
								<div class="col-md-4 single-right-grid-left">
									<a href="single.jsp"><img src="images/m2.jpg" alt="" /></a>
								</div>
								<div class="col-md-8 single-right-grid-right">
									<a href="single.jsp" class="title"> Nullam interdum metus</a>
									<p class="author">
										<a href="#" class="author">John Maniya</a>
									</p>
									<p class="views">2,114,200 views</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="single-right-grids">
								<div class="col-md-4 single-right-grid-left">
									<a href="single.jsp"><img src="images/m3.jpg" alt="" /></a>
								</div>
								<div class="col-md-8 single-right-grid-right">
									<a href="single.jsp" class="title"> Nullam interdum metus</a>
									<p class="author">
										<a href="#" class="author">John Maniya</a>
									</p>
									<p class="views">2,114,200 views</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="single-right-grids">
								<div class="col-md-4 single-right-grid-left">
									<a href="single.jsp"><img src="images/m4.jpg" alt="" /></a>
								</div>
								<div class="col-md-8 single-right-grid-right">
									<a href="single.jsp" class="title"> Nullam interdum metus</a>
									<p class="author">
										<a href="#" class="author">John Maniya</a>
									</p>
									<p class="views">2,114,200 views</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="single-right-grids">
								<div class="col-md-4 single-right-grid-left">
									<a href="single.jsp"><img src="images/m5.jpg" alt="" /></a>
								</div>
								<div class="col-md-8 single-right-grid-right">
									<a href="single.jsp" class="title"> Nullam interdum metus</a>
									<p class="author">
										<a href="#" class="author">John Maniya</a>
									</p>
									<p class="views">2,114,200 views</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="single-right-grids">
								<div class="col-md-4 single-right-grid-left">
									<a href="single.jsp"><img src="images/c5.jpg" alt="" /></a>
								</div>
								<div class="col-md-8 single-right-grid-right">
									<a href="single.jsp" class="title"> Nullam interdum metus</a>
									<p class="author">
										<a href="#" class="author">John Maniya</a>
									</p>
									<p class="views">2,114,200 views</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="single-right-grids">
								<div class="col-md-4 single-right-grid-left">
									<a href="single.jsp"><img src="images/m6.jpg" alt="" /></a>
								</div>
								<div class="col-md-8 single-right-grid-right">
									<a href="single.jsp" class="title"> Nullam interdum metus</a>
									<p class="author">
										By <a href="#" class="author">John Maniya</a>
									</p>
									<p class="views">2,114,200 views</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="single-right-grids">
								<div class="col-md-4 single-right-grid-left">
									<a href="single.jsp"><img src="images/m15.jpg" alt="" /></a>
								</div>
								<div class="col-md-8 single-right-grid-right">
									<a href="single.jsp" class="title"> Nullam interdum metus</a>
									<p class="author">
										By <a href="#" class="author">John Maniya</a>
									</p>
									<p class="views">2,114,200 views</p>
								</div>
								<div class="clearfix"></div>
							</div>

						</div>
					</div>



					<div class="clearfix"></div>
				</div>
				<!-- //movie-browse-agile -->
				<!--body wrapper start-->
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
										<p>2016</p>
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
										<p>2016</p>
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
										<p>2016</p>
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
										<p>2016</p>
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
										<p>2016</p>
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
										<p>2016</p>
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
										<p>2016</p>
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
										<p>2016</p>
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
											<a href="single.jsp">Godâs Compass</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
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
			<!-- //w3l-latest-movies-grids -->
		</div>
	</div>
	<!-- //w3l-medile-movies-grids -->
