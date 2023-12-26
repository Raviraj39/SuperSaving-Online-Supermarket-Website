<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@page import ="java.sql.*"%>
      <%@page import ="java.io.IOException" %>
    <%@ page import ="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SuperSaving Supermarket</title>
<link rel="stylesheet" href="css/products.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
		rel="stylesheet">
</head>
<body>
<div class="container-fluid main_top_nav ">
		<div class="text-center py-4  text-white ">

			<img src="./images/illustrations/BikeDilvery.webp" alt="" class="" height="130px">
			<h3 class="top-nav">SuperSavings Supermarket</h3>
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
						<a class="nav-link active text-white" href="./Home.jsp">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-white" href="./products.jsp">Products</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-white" href="#">About us</a>
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
					<button class="btn btn-outline-primary mx-2"> <a href="logout"><i class="fa-solid fa-arrow-right-from-bracket"></i>Logout</a></button>

				</form>
			</div>
		</div>
	</nav>
	
		
	
	
	<section>
		<div class="container ">
			<div class="row">
				<div class="product-card col-12 col-md-6 col-lg-4">
						<div class="badge">NEW</div>
						<div class="product-tumb">
							<img src="./images/illustrations/m1.jpg" alt="">
						</div>
				<div class="product-details ">
				<%
        try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
			Statement stat = conn.createStatement();
			ResultSet rs=stat.executeQuery("select * from addproductadmin ");
			while(rs.next()) {

        %>
							<span class="product-catagory"><%= rs.getString(3) %></span>
							<h4><a href=""><%= rs.getString(2) %></a></h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
							<div class="product-bottom-details">
								<div class="product-price"><small>$96.00</small><%= rs.getString(4) %></div>
								<div class="product-links">
									<a href=""><i class="fa fa-heart"></i></a>
									<a href=""><i class="fa fa-shopping-cart"></i></a>
								</div>
								<button class="addcart">Add to Cart</button>
							</div>
							
							 <%
        }}catch(Exception e) {
			e.printStackTrace();
		}
        
          
          %>
						</div>
				</div>
			</div>
		</div>
	</section>
	
	
	
</body>
</html>