<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SuperSaving Supermarket</title>
<link href="./css/register.css"  rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="screen">
			<div class="screen__content">
				<form class="login" action="Register2" method="post">
					<div>
						<h2>Sign up</h2>
					</div>
					<div class="login__field">
						<input type="text" class="login__input" name="input1" placeholder="Username / Email">
					</div>
					<div class="login__field">
						<input type="password" class="login__input" name="input2" placeholder="Password">
					</div>
					<div class="login__field">
						<input type="text" class="login__input" name="input3"
							placeholder="Repeat your password" />
					</div>
					<div class="login__field">
						<input type="text" class="login__input" name="input4" placeholder="Your email" />
					</div>
					<div class="login__field">
						<input type="text" class="login__input" name="input5" placeholder="Your Mobile Number" />
					</div>
					<button class="button login__submit" type="submit">
						<span class="button__text">Sign up Now</span>
					</button>
				</form>
				
				<div class="social-login">
					<p><a href="Login.jsp">Login</a> </p>
				</div>
			</div>
			<div class="screen__background">
				<span class="screen__background__shape screen__background__shape4"></span>
				<span class="screen__background__shape screen__background__shape3"></span>
				<span class="screen__background__shape screen__background__shape2"></span>
				<span class="screen__background__shape screen__background__shape1"></span>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
		integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
		crossorigin="anonymous"></script>

</body>
</html>