
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Dathx - King Of Movies</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="One Movies Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/medile.css" rel='stylesheet' type='text/css' />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/faqstyle.css" type="text/css"
	media="all" />
<!-- news-css -->
<link rel="stylesheet" href="news-css/news.css" type="text/css"
	media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="list-css/list.css" type="text/css"
	media="all" />
<!-- //list-css -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link
	href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300'
	rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css"
	media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		  autoPlay: 3000, //Set AutoPlay to 3 seconds
	 
		  items : 5,
		  itemsDesktop : [640,5],
		  itemsDesktopSmall : [414,4]
	 
		});
	 
	}); 
</script>
</head>

<body>
	<!-- header -->
	<%@include file="Function/header.jsp"%>
	<!-- header -->

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
							<li class="dropdown active"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown">Genres <b
									class="caret"></b></a>
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

	<!-- links -->
	<%@include file="Function/links.jsp"%>
	<!-- links -->

	<!-- comedy-w3l-agileits -->
	<div class="wthree-comedy">
		<!-- /w3l-medile-movies-grids -->
		<div class="w3l-medile-movies-grids">
			<!-- /movie-browse-agile -->
			<div class="movie-browse-agile">
				<!--/browse-agile-w3ls -->
				<div class="browse-agile-w3ls general-w3ls">
					<div class="tittle-head">
						<h4 class="latest-text">Comedy Movies</h4>
						<div class="container">
							<div class="agileits-single-top">
								<ol class="breadcrumb">
									<li><a href="/PS12656_JAVA4/index">Home</a></li>
									<li class="active">Comedy Movies</li>
								</ol>
							</div>
						</div>
					</div>
					<div class="container">
						<!-- /latest-movies1 -->
						<div class="browse-inner-come-agile-w3">
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c1.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Moana</a>
										</h6>
									</div>
									<div class="mid-2">

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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c2.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Dirty Grandpa</a>
										</h6>
									</div>
									<div class="mid-2">

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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c3.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Ride Along</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c4.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">The Boss</a>
										</h6>
									</div>
									<div class="mid-2">

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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c5.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Keanu</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c6.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Ice Age</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>

							<div class="clearfix"></div>
						</div>

						<!-- //latest-movies1 -->
						<!-- /latest-movies1 -->
						<div class="browse-inner-come-agile-w3">
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c7.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Mike-Dave</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c8.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Bad Moms</a>
										</h6>
									</div>
									<div class="mid-2">

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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c9.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Barber Shop</a>
										</h6>
									</div>
									<div class="mid-2">

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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c10.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Nine Leaves</a>
										</h6>
									</div>
									<div class="mid-2">

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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c11.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Billy Lynn’s </a>
										</h6>
									</div>
									<div class="mid-2">

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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c12.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">War on Everyone</a>
										</h6>
									</div>
									<div class="mid-2">

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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>

							<div class="clearfix"></div>
						</div>
						<!-- //latest-movies1 -->
						<div class="browse-inner-come-agile-w3">
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c1.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Moana</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c2.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Dirty Grandpa</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c3.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Ride Along</a>
										</h6>
									</div>
									<div class="mid-2">

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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c4.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">The Boss</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c5.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Keanu</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.jsp" class="hvr-shutter-out-horizontal"><img
									src="images/c6.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.jsp">Ice Age</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
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
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!--//browse-agile-w3ls -->
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
			<!-- //movie-browse-agile -->
			<!--body wrapper start-->
			<div class="review-slider">
				<h4 class="latest-text">Movie Reviews</h4>
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
												<a href="single.jsp">God’s Compass</a>
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
			</div>
		</div>
		<!-- //w3l-medile-movies-grids -->
	</div>
	<!-- //comedy-w3l-agileits -->
	<!-- footer -->
	<%@include file="Function/footer.jsp"%>
	<!-- footer -->

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
	<!-- //Bootstrap Core JavaScript -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
</body>
</html>