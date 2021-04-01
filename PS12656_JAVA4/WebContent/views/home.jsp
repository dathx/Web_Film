<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
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
					<c:url var="url" value="/" />
					<ul class="nav navbar-nav">
						<li class="active"><a href="${url}index">Home</a></li>
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
<!-- //nav -->

<!-- banner -->
<div id="slidey" style="display: none;">
	<ul>
		<li><img src="images/6.jpg" alt=" ">
			<p class='title'>Ice Age</p>
			<p class='description'>In the film's epilogue, Scrat keeps
				struggling to control the alien ship until it crashes on Mars,
				destroying all life on the planet.</p></li>
		<li><img src="images/7.jpg" alt=" ">
			<p class='title'>X - Man</p>
			<p class='description'>In 1977, paranormal investigators Ed
				(Patrick Wilson) and Lorraine Warren come out of a self-imposed
				sabbatical to travel to Enfield, a borough in north ...</p></li>
		<li><img src="images/5.jpg" alt=" ">
			<p class='title'>Tarzan</p>
			<p class='description'>Tarzan, having acclimated to life in
				London, is called back to his former home in the jungle to
				investigate the activities at a mining encampment.</p></li>
		<li><img src="images/2.jpg" alt=" ">
			<p class='title'>Maximum Ride</p>
			<p class='description'>Six children, genetically cross-bred with
				avian DNA, take flight around the country to discover their origins.
				Along the way, their mysterious past is ...</p></li>
		<li><img src="images/3.jpg" alt=" ">
			<p class='title'>Independence</p>
			<p class='description'>The fate of humanity hangs in the balance
				as the U.S. President and citizens decide if these aliens are to be
				trusted ...or feared.</p></li>
		<li><img src="images/4.jpg" alt=" ">
			<p class='title'>Central Intelligence</p>
			<p class='description'>Bullied as a teen for being overweight,
				Bob Stone (Dwayne Johnson) shows up to his high school reunion
				looking fit and muscular. Claiming to be on a top-secret ...</p></li>
		<li><img src="images/6.jpg" alt=" ">
			<p class='title'>Ice Age</p>
			<p class='description'>In the film's epilogue, Scrat keeps
				struggling to control the alien ship until it crashes on Mars,
				destroying all life on the planet.</p></li>
	</ul>
</div>
<script src="js/jquery.slidey.js"></script>
<script src="js/jquery.dotdotdot.min.js"></script>
<script type="text/javascript">
	$("#slidey").slidey({
		interval : 8000,
		listCount : 5,
		autoplay : false,
		showList : true
	});
	$(".slidey-list-description").dotdotdot();
</script>
<!-- //banner -->


<!-- banner-bottom -->

<div class="banner-bottom">
	<div class="container">
		<div class="w3_agile_banner_bottom_grid">
			<div id="owl-demo" class="owl-carousel owl-theme">
			<c:forEach var="item" items="${slideHeader}">
				<div class="item">
					<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
						<a href="/PS12656_JAVA4/play-video/${item.id }" class="hvr-shutter-out-horizontal"><img
							src="images/${item.poster }" title="${item.title }" class="img-responsive"
							alt=" " />
							<div class="w3l-action-icon">
								<i class="fa fa-play-circle" aria-hidden="true"></i>
							</div> </a>
						<div class="mid-1 agileits_w3layouts_mid_1_home">
							<div class="w3l-movie-text">
								<h6>
									<a href="/PS12656_JAVA4/play-video/${item.id }">${item.title }</a>
								</h6>
							</div>
							<div class="mid-2 agile_mid_2_home">
								<p>
									<i class="fa fa-eye" aria-hidden="true"></i> ${item.views }
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
			</c:forEach>
			</div>
		</div>
	</div>
</div>

<!-- //banner-bottom -->

<!--  -->
<!--  -->
<!--  -->
<!--  -->
<!--  -->
<!--  -->
<div class="general">
	<h4 class="latest-text w3_latest_text">Top Views</h4>
	<div class="container">
		<div class="bs-example bs-example-tabs" role="tabpanel"
			data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home"
					id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
					aria-expanded="true">Top viewed</a></li>
				<li role="presentation"><a href="#profile" role="tab"
					id="profile-tab" data-toggle="tab" aria-controls="profile"
					aria-expanded="false">Featured</a></li>
				<li role="presentation"><a href="#rating" id="rating-tab"
					role="tab" data-toggle="tab" aria-controls="rating"
					aria-expanded="true">Top Rating</a></li>
				<li role="presentation"><a href="#imdb" role="tab"
					id="imdb-tab" data-toggle="tab" aria-controls="imdb"
					aria-expanded="false">Recently Added</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div role="tabpanel" class="tab-pane fade active in" id="home"
					aria-labelledby="home-tab">
					<div class="w3_agile_featured_movies">

						<!-- Contens -->

						<c:forEach var="item" items="${top12}">
							<div class="col-md-2 w3l-movie-gride-agile">
							<%-- <input type="hidden" value="${item.id}" name="id"> --%>
								<a href="/PS12656_JAVA4/play-video/${item.id }" class="hvr-shutter-out-horizontal"><img
									src="images/${item.poster}" title="${item.title}"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="/PS12656_JAVA4/play-video/${item.id }">${item.title}</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<i class="fa fa-eye" aria-hidden="true"></i> ${item.views}
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
									
									<%-- <form action="" method="post">
										<button formaction="${url}/like?usID=${sessionScope.user.id}&vdID=${item.id}" type="submit" class="btn btn-primary">Like</button>
									</form> --%>
									
									<div class="mid-2 agile_mid_2_home">
										<div class="icon-box col-md-6 col-sm-4">										
											<a  class="agile-icon" href="/PS12656_JAVA4/like?usID=${sessionScope.user.id}&vdID=${item.id}"><i class="fa fa-heart"></i>Like</a>											
										</div>
										<div class="icon-box col-md-6 col-sm-4">
											<a class="agile-icon" href="/PS12656_JAVA4/share"><i
												class="fa fa-share-square"></i>Share</a>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
						</c:forEach>

						<!-- next-prev  -->
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
				</div>
			</div>
		</div>
	</div>
</div>
<!-- next-prev  -->
<!-- //general -->
<!-- Latest-tv-series -->
<div class="Latest-tv-series">
	<h4 class="latest-text w3_latest_text w3_home_popular">Most
		Popular Movies</h4>
	<div class="container">
		<section class="slider">
			<div class="flexslider">
				<ul class="slides">
					<li>
						<div class="agile_tv_series_grid">
							<div class="col-md-6 agile_tv_series_grid_left">
								<div class="w3ls_market_video_grid1">
									<img src="images/h1-1.jpg" alt=" " class="img-responsive" /> <a
										class="w3_play_icon" href="#small-dialog"> <span
										class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
									</a>
								</div>
							</div>
							<div class="col-md-6 agile_tv_series_grid_right">
								<p class="fexi_header">the conjuring 2</p>
								<p class="fexi_header_para">
									<span class="conjuring_w3">Story Line<label>:</label></span>
									720p,Bluray HD Free Movie Downloads, Watch Free Movies Online
									with high speed Free Movie Streaming | MyDownloadTube Lorraine
									and Ed Warren go to north London to help a single...
								</p>
								<p class="fexi_header_para">
									<span>Date of Release<label>:</label></span> Jun 10, <i
										class="fa fa-eye" aria-hidden="true"></i> 5120
								</p>
								<p class="fexi_header_para">
									<span>Genres<label>:</label>
									</span> <a href="genres.jsp">Drama</a> | <a href="genres.jsp">Adventure</a>
									| <a href="genres.jsp">Family</a>
								</p>
								<p class="fexi_header_para fexi_header_para1">
									<span>Star Rating<label>:</label></span> <a href="#"><i
										class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star-half-o" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star-o" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star-o" aria-hidden="true"></i></a>
								</p>
							</div>
							<div class="clearfix"></div>
							<div class="agileinfo_flexislider_grids">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
										src="images/m22.jpg" title="album-name" class="img-responsive"
										alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6>
												<a href="single.jsp">Assassin's Creed 3</a>
											</h6>
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
										src="images/m2.jpg" title="album-name" class="img-responsive"
										alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6>
												<a href="single.jsp">Bad Moms</a>
											</h6>
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
											</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													<li><a href="#"><i class="fa fa-star"
															aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star"
															aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star"
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="clearfix"></div>
							</div>
						</div>
					</li>
					<li>
						<div class="agile_tv_series_grid">
							<div class="col-md-6 agile_tv_series_grid_left">
								<div class="w3ls_market_video_grid1">
									<img src="images/h2-1.jpg" alt=" " class="img-responsive" /> <a
										class="w3_play_icon1" href="#small-dialog1"> <span
										class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
									</a>
								</div>
							</div>
							<div class="col-md-6 agile_tv_series_grid_right">
								<p class="fexi_header">a haunting in cawdor</p>
								<p class="fexi_header_para">
									<span class="conjuring_w3">Story Line<label>:</label></span>
									Vivian Miller, sent to a rehabilitation programme for young
									offenders, where a theatre camp is used as an alternative to
									jail time. After she views tape ...
								</p>
								<p class="fexi_header_para">
									<span>Date of Release<label>:</label></span> Oct 09, 2015
								</p>
								<p class="fexi_header_para">
									<span>Genres<label>:</label>
									</span> <a href="genres.jsp">Thriller</a> | <a href="genres.jsp">Horror</a>
								</p>
								<p class="fexi_header_para fexi_header_para1">
									<span>Star Rating<label>:</label></span> <a href="#"><i
										class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star-half-o" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star-o" aria-hidden="true"></i></a>
								</p>
							</div>
							<div class="clearfix"></div>
							<div class="agileinfo_flexislider_grids">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
										src="images/m2.jpg" title="album-name" class="img-responsive"
										alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6>
												<a href="single.jsp">Bad Moms</a>
											</h6>
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
											</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													<li><a href="#"><i class="fa fa-star"
															aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star"
															aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star"
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
										src="images/m21.jpg" title="album-name" class="img-responsive"
										alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6>
												<a href="single.jsp">The Jungle Book</a>
											</h6>
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="clearfix"></div>
							</div>
						</div>
					</li>
					<li>
						<div class="agile_tv_series_grid">
							<div class="col-md-6 agile_tv_series_grid_left">
								<div class="w3ls_market_video_grid1">
									<img src="images/h3-1.jpg" alt=" " class="img-responsive" /> <a
										class="w3_play_icon2" href="#small-dialog2"> <span
										class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
									</a>
								</div>
							</div>
							<div class="col-md-6 agile_tv_series_grid_right">
								<p class="fexi_header">civil war captain America</p>
								<p class="fexi_header_para">
									<span class="conjuring_w3">Story Line<label>:</label></span>
									After the Avengers leaves some&nbsp;collateral damage,
									political pressure mounts to install a system of
									accountability.&nbsp;The new status quo deeply divides ...
								</p>
								<p class="fexi_header_para">
									<span>Date of Release<label>:</label></span> May 06, <i
										class="fa fa-eye" aria-hidden="true"></i> 5120
								</p>
								<p class="fexi_header_para">
									<span>Genres<label>:</label>
									</span> <a href="genres.jsp">Action</a> | <a href="genres.jsp">Adventure</a>
								</p>
								<p class="fexi_header_para fexi_header_para1">
									<span>Star Rating<label>:</label></span> <a href="#"><i
										class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star-o" aria-hidden="true"></i></a> <a href="#"><i
										class="fa fa-star-o" aria-hidden="true"></i></a>
								</p>
							</div>
							<div class="clearfix"></div>
							<div class="agileinfo_flexislider_grids">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
										src="images/m2.jpg" title="album-name" class="img-responsive"
										alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6>
												<a href="single.jsp">Bad Moms</a>
											</h6>
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
											</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													<li><a href="#"><i class="fa fa-star"
															aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star"
															aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star"
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
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
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
										src="images/m20.jpg" title="album-name" class="img-responsive"
										alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6>
												<a href="single.jsp">The Secret Life of Pets</a>
											</h6>
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>
												<i class="fa fa-eye" aria-hidden="true"></i> 5120
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
								<div class="clearfix"></div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</section>