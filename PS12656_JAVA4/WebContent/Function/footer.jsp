<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="footer">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					<div class="w3ls_footer_grid_left1">
						<h2>Subscribe to us</h2>
						<div class="w3ls_footer_grid_left1_pos">
							<form action="#" method="post">
								<input type="email" name="email" placeholder="Your email..."
									required=""> <input type="submit" value="Send">
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6 w3ls_footer_grid_right">
					<a href="/PS12656_JAVA4/index"><h2>
							DATHX<span>Movies</span>
						</h2></a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-5 w3ls_footer_grid1_left">
				<p>
					&copy; 2021 DATHX Movies. All rights reserved | Design by <a
						href="https://www.facebook.com/dathx/">Dathx</a>
				</p>
				<br> <span class="badge badge-primary">Visitors:
					000${applicationScope.visitors}</span>
			</div>
			<div class="col-md-7 w3ls_footer_grid1_right">
				<ul>
					<li><a href="genres.jsp">Movies</a></li>
					<li><a href="faq.jsp">FAQ</a></li>
					<li><a href="horror.jsp">Action</a></li>
					<li><a href="genres.jsp">Adventure</a></li>
					<li><a href="comedy.jsp">Comedy</a></li>
					<li><a href="icons.jsp">Icons</a></li>
					<li><a href="contact.jsp">Contact Us</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>