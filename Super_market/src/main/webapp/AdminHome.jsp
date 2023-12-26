<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SuperSaving Supermarket</title>
<link rel="stylesheet" href="css/homestyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>
	<div class="container-fluid navtop">
		<div class="text-center py-4 text-white  ">
			<img src="./images/illustrations/BikeDilvery.webp" alt="" class="" height="100px">
			<h3>SuperSavings Supermarket</h3>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg bg-black text-white py-3">
		<div class="container text-white">
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0  ">
					<li class="nav-item">
						<a class="nav-link active text-white" href="./AdminHome.jsp">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-white" href="">Products</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-white" href="#"> About us</a>
					</li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-primary mx-2" type="submit">Search</button>
					<div class="d-flex align-items-center justify-content-between mx-3">
						<div class="">
						<i class="fa-regular fa-user "></i></div>
					<p class="ms-4 "><%= session.getAttribute("username") %></p>
					</div>					
					<a href="logout" class="btn btn-outline-primary mx-2"> <i class="fa-solid fa-arrow-right-from-bracket"></i>LogOut  </a>
				</form>
			</div>
		</div>
	</nav>
	<div class="topnav sticky">
            <a href="AddNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEdit.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="">Orders Received <i class="fas fa-archive"></i></a>
            <a href="">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a href="">Delivered Orders <i class='fas fa-dolly'></i></a>
          </div>

</body>
</html>