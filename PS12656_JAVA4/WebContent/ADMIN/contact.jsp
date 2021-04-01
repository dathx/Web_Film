<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>Blank | Creative - Bootstrap 3 Responsive Admin Template</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->

<!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body>
	<!-- container section start -->
	<%@include file="Functions/header.jsp"%>
	<!--header end-->

	<!--sidebar start-->
	<%@include file="Functions/aside.jsp"%>
	<!--sidebar end-->

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header">
						<i class="fa fa fa-bars"></i> Pages
					</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="AdminIndex.jsp">Home</a></li>
						<li><i class="fa fa-bars"></i>Pages</li>
						<li><i class="fa fa-square-o"></i>Pages</li>
					</ol>
				</div>
			</div>
			<!-- page start-->
			<div class="row">
				<div class="col-lg-6">
					<div class="recent">
						<h3>Send us a message</h3>
					</div>
					<div id="sendmessage">Your message has been sent. Thank you!</div>
					<div id="errormessage"></div>
					<form action="" method="post" role="form" class="contactForm">
						<div class="form-group">
							<input type="text" name="name" class="form-control" id="name"
								placeholder="Your Name" data-rule="minlen:4"
								data-msg="Please enter at least 4 chars" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email" id="email"
								placeholder="Your Email" data-rule="email"
								data-msg="Please enter a valid email" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="subject"
								id="subject" placeholder="Subject" data-rule="minlen:4"
								data-msg="Please enter at least 8 chars of subject" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<textarea class="form-control" name="message" rows="5"
								data-rule="required" data-msg="Please write something for us"
								placeholder="Message"></textarea>
							<div class="validation"></div>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg">Send
								Message</button>
						</div>
					</form>
				</div>

				<div class="col-lg-6">
					<div class="recent">
						<h3>Get in touch with us</h3>
					</div>
					<div class="">
						<p>Nam liber tempor cum soluta nobis eleifend option congue
							nihil imperdiet doming id quod mazim placerat facer possim assum.
							Typi non habent claritatem insitam; est usus legentis in iis qui
							facit eorum.</p>
						<p>Nam liber tempor cum soluta nobis eleifend option congue
							nihil imperdiet doming id quod mazim placerat facer possim assum.
							Typi non habent claritatem insitam; est usus legentis in iis qui
							facit eorum.</p>

						<h4>Address:</h4>
						Little Lonsdale St, New York<br>
						<h4>Telephone:</h4>
						345 578 59 45 416</br>
						<h4>Fax:</h4>
						123 456 789
					</div>
				</div>
			</div>
			<!-- page end-->
		</section>
	</section>
	<!--main content end-->
	<div class="text-right">
		<div class="credits">
			<!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	</div>
	</section>
	<!-- container section end -->
	<!-- javascripts -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!--custome script for all page-->
	<script src="js/scripts.js"></script>
	<script src="contactform/contactform.js"></script>


</body>

</html>
