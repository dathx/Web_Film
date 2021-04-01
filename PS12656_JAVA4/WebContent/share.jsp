<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
				${message }
				<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					<div class="w3ls_footer_grid_left1">
						<h2>Send to</h2>
						<div class="w3ls_footer_grid_left1_pos">
							<form action="/PS12656_JAVA4/share" method="post">
								<input type="text" name="to" placeholder="To email..."
									required=""> 
									<input  type="submit" value="Send">
							</form>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
</body>
</html>