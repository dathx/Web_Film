
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
<link rel="stylesheet" href="css/faqstyle.css" type="text/css"
	media="all" />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css"
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
</head>

<body>
	<!-- header -->
	<%@include file="Function/header.jsp"%>
	<!-- //bootstrap-pop-up -->
	<!-- header -->

	<!-- nav -->
	<%@include file="Function/nav.jsp"%>
	<!-- //nav -->

	<!--links  -->
	<%@include file="Function/links.jsp"%>
	<!--links  -->

	<!-- faq-banner -->
	<div class="faq">
		<div class="container">
			<div class="agileits-news-top">
				<ol class="breadcrumb">
					<li><a href="/PS12656_JAVA4/index">Home</a></li>
					<li class="active">News</li>
				</ol>
			</div>
			<div class="agileinfo-news-top-grids">
				<div class="col-md-8 wthree-top-news-left">
					<div class="wthree-news-left">
						<div class="bs-example bs-example-tabs" role="tabpanel"
							data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home1"
									id="home1-tab" role="tab" data-toggle="tab"
									aria-controls="home1" aria-expanded="true">Latest News</a></li>
								<li role="presentation"><a href="#w3bsd" role="tab"
									id="w3bsd-tab" data-toggle="tab" aria-controls="w3bsd">Movie
										News</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home1"
									aria-labelledby="home1-tab">
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m1.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m2.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m3.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m4.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m5.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m6.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m7.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m8.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m9.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m10.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m11.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m12.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m13.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m14.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m15.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m16.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="w3bsd"
									aria-labelledby="w3bsd-tab">
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m17.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m18.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m19.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m20.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m21.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m22.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m1.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m2.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m3.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m4.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m5.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m6.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="wthree-news-top-left">
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m7.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="col-md-6 w3-agileits-news-left">
											<div class="col-sm-5 wthree-news-img">
												<a href="news-single.jsp"><img src="images/m8.jpg"
													alt="" /></a>
											</div>
											<div class="col-sm-7 wthree-news-info">
												<h5>
													<a href="news-single.jsp">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit.</a>
												</h5>
												<p>Sed tristique mattis fermentum. Etiam semper aliquet
													massa, id tempus massa mattis eget.</p>
												<ul>
													<li><i class="fa fa-clock-o" aria-hidden="true"></i>
														24/09/2016</li>
													<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 wthree-news-right">
					<!-- news-right-top -->
					<div class="news-right-top">
						<div class="wthree-news-right-heading">
							<h3>Updated News</h3>
						</div>
						<div class="wthree-news-right-top">
							<div class="news-grids-bottom">
								<!-- date -->
								<div id="design" class="date">
									<div id="cycler">
										<div class="date-text">
											<a href="news-single.jsp">August 15,2016</a>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit.</p>
										</div>
										<div class="date-text">
											<a href="news-single.jsp">July 08,2016 <span
												class="blinking"><img src="images/new.png" alt="" /></span></a>
											<p>Nullam non turpis sit amet metus tristique egestas et
												et orci.</p>
										</div>
										<div class="date-text">
											<a href="news-single.jsp">February 15,2016</a>
											<p>Duis venenatis ac ipsum vel ultricies in placerat quam</p>
										</div>
										<div class="date-text">
											<a href="news-single.jsp">January 15,2016 <span
												class="blinking"><img src="images/new.png" alt="" /></span></a>
											<p>Pellentesque ullamcorper fringilla ipsum, ornare
												dapibus velit volutpat sit amet.</p>
										</div>
										<div class="date-text">
											<a href="news-single.jsp">September 24,2016</a>
											<p>In lobortis ipsum mi, ac imperdiet elit pellentesque
												at.</p>
										</div>
										<div class="date-text">
											<a href="news-single.jsp">August 15,2016</a>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit.</p>
										</div>
										<div class="date-text">
											<a href="news-single.jsp">July 08,2016 <span
												class="blinking"><img src="images/new.png" alt="" /></span></a>
											<p>Nullam non turpis sit amet metus tristique egestas et
												et orci.</p>
										</div>
										<div class="date-text">
											<a href="news-single.jsp">February 15,2016</a>
											<p>Duis venenatis ac ipsum vel ultricies in placerat quam</p>
										</div>
										<div class="date-text">
											<a href="news-single.jsp">January 15,2016 <span
												class="blinking"><img src="images/new.png" alt="" /></span></a>
											<p>Pellentesque ullamcorper fringilla ipsum, ornare
												dapibus velit volutpat sit amet.</p>
										</div>
										<div class="date-text">
											<a href="news-single.jsp">September 24,2016</a>
											<p>In lobortis ipsum mi, ac imperdiet elit pellentesque
												at.</p>
										</div>
									</div>
									<script>
										function blinker() {
											$('.blinking').fadeOut(500);
											$('.blinking').fadeIn(500);
										}
										setInterval(blinker, 1000);
										</script>
									<script>
											function cycle($item, $cycler){
												setTimeout(cycle, 2000, $item.next(), $cycler);
												
												$item.slideUp(1000,function(){
													$item.appendTo($cycler).show();        
												});
												}
											cycle($('#cycler div:first'),  $('#cycler'));
										</script>
								</div>
								<!-- //date -->
							</div>
						</div>
					</div>
					<!-- //news-right-top -->
					<!-- news-right-bottom -->
					<div class="news-right-bottom">
						<div class="wthree-news-right-heading">
							<h3>Top News</h3>
						</div>
						<div class="news-right-bottom-bg">
							<div class="news-grids-bottom">
								<div class="top-news-grid">
									<div class="top-news-grid-heading">
										<a href="news-single.jsp">Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. Aenean rutrum ac nulla</a>
									</div>
									<div class="w3ls-news-t-grid top-t-grid">
										<ul>
											<li><a href="#"><i class="fa fa-clock-o"></i> 1h</a></li>
											<li><a href="#"><i class="fa fa-user"></i> Vivamus
													nibh</a></li>
										</ul>
									</div>
								</div>
								<div class="top-news-grid">
									<div class="top-news-grid-heading">
										<a href="news-single.jsp">Duis orci enim, rutrum vel
											sodales ut, tincidunt nec turpis.</a>
									</div>
									<div class="w3ls-news-t-grid top-t-grid">
										<ul>
											<li><a href="#"><i class="fa fa-clock-o"></i> 3h</a></li>
											<li><a href="#"><i class="fa fa-user"></i> Cras
													pretium</a></li>
										</ul>
									</div>
								</div>
								<div class="top-news-grid">
									<div class="top-news-grid-heading">
										<a href="news-single.jsp">Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. Aenean rutrum ac nulla</a>
									</div>
									<div class="w3ls-news-t-grid top-t-grid">
										<ul>
											<li><a href="#"><i class="fa fa-clock-o"></i> 1h</a></li>
											<li><a href="#"><i class="fa fa-user"></i> Vivamus
													nibh</a></li>
										</ul>
									</div>
								</div>
								<div class="top-news-grid">
									<div class="top-news-grid-heading">
										<a href="news-single.jsp">Duis orci enim, rutrum vel
											sodales ut, tincidunt nec turpis.</a>
									</div>
									<div class="w3ls-news-t-grid top-t-grid">
										<ul>
											<li><a href="#"><i class="fa fa-clock-o"></i> 3h</a></li>
											<li><a href="#"><i class="fa fa-user"></i> Cras
													pretium</a></li>
										</ul>
									</div>
								</div>
								<div class="top-news-grid">
									<div class="top-news-grid-heading">
										<a href="news-single.jsp">Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. Aenean rutrum ac nulla</a>
									</div>
									<div class="w3ls-news-t-grid top-t-grid">
										<ul>
											<li><a href="#"><i class="fa fa-clock-o"></i> 1h</a></li>
											<li><a href="#"><i class="fa fa-user"></i> Vivamus
													nibh</a></li>
										</ul>
									</div>
								</div>
								<div class="top-news-grid">
									<div class="top-news-grid-heading">
										<a href="news-single.jsp">Duis orci enim, rutrum vel
											sodales ut, tincidunt nec turpis.</a>
									</div>
									<div class="w3ls-news-t-grid top-t-grid">
										<ul>
											<li><a href="#"><i class="fa fa-clock-o"></i> 3h</a></li>
											<li><a href="#"><i class="fa fa-user"></i> Cras
													pretium</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- //news-right-bottom -->
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //faq-banner -->
	<!-- footer -->
	<%@include file="Function/footer.jsp"%>
	<!-- //footer -->
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