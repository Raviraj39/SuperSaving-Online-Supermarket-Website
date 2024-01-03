<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import ="java.sql.*"%>
    <%@page import ="java.io.IOException" %>
    <%@ page import ="java.io.PrintWriter"%>
    <%@ page import ="javax.servlet.*" %>
    <%
    String email=session.getAttribute("email").toString();
   
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SuperSaving Supermarket</title>
<link rel="stylesheet" href="css/home.css">
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
	<nav class="navbar navbar-expand-lg bg-black text-white  py-3">
		<div class="container text-white">
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarSupportedContent" >
				<ul class="navbar-nav me-auto mb-2 mb-lg-0  ">
					<li class="nav-item">
						<a class="nav-link active text-white" href="./Home.jsp">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-white" href="products.jsp">Products</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-white" href="addtocart.jsp">Add To Cart <i class="fa fa-shopping-cart"></i></a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-white" href="./myorders.jsp">My Orders</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-white" href="./aboutus.jsp">About us</a>
					</li>
				</ul>
				<form class="d-flex text-center justify-content-between   " role="search" >
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-primary mx-2" type="submit">Search</button>
					<div class="d-flex align-items-center justify-content-between mx-3">
						<div class="">
						<i class="fa-regular fa-user "></i></div>
					<p class="ms-4 "><%= session.getAttribute("username") %></p>
					</div>
					<button class="btn mx-2"> <a href="logout"><i class="fa-solid fa-arrow-right-from-bracket"></i>Logout</a></button>

				</form>
			</div>
		</div>
	</nav>
	<!-- carousel_container -->
	<section>
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
					aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
					aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
					aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"
					aria-label="Slide 4"></button>
			</div>
			<div class="carousel-inner">

				<div class="carousel-item" data-bs-interval="3000">
					<img src="./images/illustrations/banner2.jpg" class="d-block w-100 carousel-img " alt="...">
					<div class="carousel-caption">
						<h2>BIG <span>SAVE</span></h2>
						<p>Get flat <span>10% </span>Cashback</p>
						<button type="button" class="addcart "><a href="products.jsp">shop now</a></button>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="3000">
					<img src="./images/illustrations/banner3.jpg" class="d-block w-100 carousel-img" alt="...">
					<div class="carousel-caption">
						<h2>BIG <span>DEAL</span></h2>
						<p>Get Best Offer Upto <span>20%</span></p>
						<button type="button" class="addcart "><a href="products.jsp">shop now</a></button>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="3000">
					<img src="./images/illustrations/banner4.jpg" class="d-block w-100 carousel-img" alt="...">
					<div class="carousel-caption">
						<h2>HEALTHY <span>SAVING</span></h2>
						<p>Get Upto <span>30% </span>Off</p>
						<button type="button" class="addcart "><a href="products.jsp">shop now</a></button>
					</div>
				</div>
				<div class=" carousel-item active" data-bs-interval="2000">
					<img src="./images/illustrations/banner1.jpg" class="d-block w-100 carousel-img" alt="...">
					<div class="carousel-caption">
						<h2>TODAY <span>DISCOUNT</span></h2>
						<p>Get Now <span> 40% </span>Discount</p>
						<button type="button" class="addcart "><a href="products.jsp">shop now</a></button>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</section>


	<!-- Our Top Products -->

	<section>
		<div class="container text-center my-5">
			<h2>Our Top Products</h2>
		</div>
		<div class="container mx-auto text-center my-5 row">
			<div class="col-12 col-md-4">
				<div class="mt-5 text-start">
					<h4>Search here</h4>
					<input type="text" placeholder="Search Product">
				</div>
				<div class="my-5">
					<h3>Special Offers</h3>
					<div>
						<img src="./images/illustrations/d2.jpg" alt="">
						<p>Lay's Potato Chips</p>
						<p><i class="fa fa-inr"></i>9.00</p>
					</div>
					<div>
						<img src="./images/illustrations/d1.jpg" alt="">
						<p>Bingo Mad Angles</p>
						<p><i class="fa fa-inr"></i>9.00</p>
					</div>
					<div>
						<img src="./images/illustrations/d4.jpg" alt="">
						<p>Tata Salt</p>
						<p><i class="fa fa-inr"></i>19.00</p>
					</div>
					<div>
						<img src="./images/illustrations/d5.jpg" alt="">
						<p>Gujarat Dry Fruit</p>
						<p><i class="fa fa-inr"></i>59.00</p>
					</div>
					<div>
						<img src="./images/illustrations/d3.jpg" alt="">
						<p>Cadbury Dairy Milk</p>
						<p><i class="fa fa-inr"></i>99.00</p>
					</div>
				</div>


			</div>
			<div class="col-12 col-md-8">
				<div>
					<h2>NUTS</h2>
				</div>
				<div class="row">
					<div class="product-card col-12 col-md-6 col-lg-4">
						<div class="badge">NEW</div>
						<div class="product-tumb">
							<img src="./images/illustrations/m1.jpg" alt="">
						</div>
						<div class="product-details">
							<span class="product-catagory">NUTS</span>
							<h4><a href="">Alemonds</a></h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
							<div class="product-bottom-details">
								<div class="product-price"><small><i class="fa fa-inr"></i>96.00</small>$230.99</div>
								<div class="product-links">
									<a href=""><i class="fa fa-heart"></i></a>
									<a href=""><i class="fa fa-shopping-cart"></i></a>
								</div>
						<button type="button" class="addcart "><a href="products.jsp">shop now</a></button>
							</div>
						</div>
					</div>
					<div class="product-card col-12 col-md-6 col-lg-4">
						<div class="badge">NEW</div>
						<div class="product-tumb">
							<img src="./images/illustrations/m2.jpg" alt="">
						</div>
						<div class="product-details">
							<span class="product-catagory">NUTS</span>
							<h4><a href="">Cashews</a></h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
							<div class="product-bottom-details">
								<div class="product-price"><small><i class="fa fa-inr"></i>96.00</small>$230.99</div>
								<div class="product-links">
									<a href=""><i class="fa fa-heart"></i></a>
									<a href=""><i class="fa fa-shopping-cart"></i></a>
								</div>
						<button type="button" class="addcart "><a href="products.jsp">shop now</a></button>
							</div>
						</div>
					</div>
					<div class="product-card col-12 col-md-6 col-lg-4">
						<div class="badge">NEW</div>
						<div class="product-tumb">
							<img src="./images/illustrations/m3.jpg" alt="">
						</div>
						<div class="product-details">
							<span class="product-catagory">NUTS</span>
							<h4><a href="">Pistachios</a></h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
							<div class="product-bottom-details">
								<div class="product-price"><small><i class="fa fa-inr"></i>96.00</small>$230.99</div>
								<div class="product-links">
									<a href=""><i class="fa fa-heart"></i></a>
									<a href=""><i class="fa fa-shopping-cart"></i></a>
								</div>
						<button type="button" class="addcart "><a href="products.jsp">shop now</a></button>
							</div>
						</div>
					</div>
				</div>

				<h2 class="text-center">Oils</h2>
				<div class="row">
					<div class="product-card col-12 col-md-6 col-lg-4">
						<div class="badge">NEW</div>
						<div class="product-tumb">
							<img src="./images/illustrations/mk4.jpg" alt="">
						</div>
						<div class="product-details">
							<span class="product-catagory">Oils</span>
							<h4><a href="">Freedom Oil, 1L</a></h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
							<div class="product-bottom-details">
								<div class="product-price"><small><i class="fa fa-inr"></i>96.00</small>$230.99</div>
								<div class="product-links">
									<a href=""><i class="fa fa-heart"></i></a>
									<a href=""><i class="fa fa-shopping-cart"></i></a>
								</div>
						<button type="button" class="addcart "><a href="products.jsp">shop now</a></button>
							</div>
						</div>
					</div>
					<div class="product-card col-12 col-md-6 col-lg-4">
						<div class="badge">NEW</div>
						<div class="product-tumb">
							<img src="./images/illustrations/mk5.jpg" alt="">
						</div>
						<div class="product-details">
							<span class="product-catagory">Oils</span>
							<h4><a href="">Saffola Gold, 1L</a></h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
							<div class="product-bottom-details">
								<div class="product-price"><small><i class="fa fa-inr"></i>96.00</small>$230.99</div>
								<div class="product-links">
									<a href=""><i class="fa fa-heart"></i></a>
									<a href=""><i class="fa fa-shopping-cart"></i></a>
								</div>
						<button type="button" class="addcart "><a href="products.jsp">shop now</a></button>
							</div>
						</div>
					</div>
					<div class="product-card col-12 col-md-6 col-lg-4">
						<div class="badge">NEW</div>
						<div class="product-tumb">
							<img src="./images/illustrations/mk5.jpg" alt="">
						</div>
						<div class="product-details">
							<span class="product-catagory">Oils</span>
							<h4><a href="">Fortune Oil, 5L</a></h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
							<div class="product-bottom-details">
								<div class="product-price"><small><i class="fa fa-inr"></i>96.00</small>$230.99</div>
								<div class="product-links">
									<a href=""><i class="fa fa-heart"></i></a>
									<a href=""><i class="fa fa-shopping-cart"></i></a>
								</div>
						<button type="button" class="addcart "><a href="products.jsp">shop now</a></button>
							</div>
						</div>
					</div>



				</div>
			</div>
		</div>
	</section>















	<!-- offer-section -->
	<section>
		<div class="container my-5 text-center">
			<div>
				<h2>
					Sale Start In
				</h2>
				<h5>Countdown in Minimal Style</h5>
				<div class="d-flex align-items-center justify-content-around text-center my-4 container ">
					<div class="count-div">
						<h2 class="display-3 fw-bold">12</h2>
						<span>Days</span>
					</div>
					<div class="count-div">
						<h2 class="display-3 fw-bold">2</h2>
						<span>Hours</span>
					</div>
					<div class="count-div">
						<h2 class="display-3 fw-bold">3</h2>
						<span>Minutes</span>
					</div>
					<div class="count-div">
						<h2 class="display-3 fw-bold">23</h2>
						<span>Seconds</span>
					</div>
				</div>
			</div>
		</div>



	</section>






	<!-- testimonial-section -->

	<div id="carouselMultiItemExample" class="carousel slide carousel-dark text-center" data-mdb-ride="carousel">

		<!-- Inner -->
		<div class="carousel-inner py-4 my-5">
			<!-- Single item -->
			<div class="carousel-item active">
				<h2>What Our Customer Say</h2>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae perspiciatis </p>
				<div class="container my-5">
					<div class="row">
						<div class="col-lg-4">
							<img class="rounded-circle shadow-1-strong mb-4" src="./images/illustrations/face6.jpg"
								alt="avatar" style="width: 150px;" />
							<h5 class="mb-3">Anna Deynah</h5>
							<p class="text-muted">
								<i class="fas fa-quote-left pe-2"></i>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod eos id
								officiis hic tenetur quae quaerat ad velit ab hic tenetur.
							</p>
							<ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="fas fa-star fa-sm"></i></li>
							</ul>
						</div>

						<div class="col-lg-4 d-none d-lg-block">
							<img class="rounded-circle shadow-1-strong mb-4" src="./images/illustrations/face1.jpg"
								alt="avatar" style="width: 150px;" />
							<h5 class="mb-3">John Doe</h5>
							<p class="text-muted">
								<i class="fas fa-quote-left pe-2"></i>
								Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
								suscipit laboriosam, nisi ut aliquid commodi.
							</p>
							<ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="fas fa-star fa-sm"></i></li>
								<li>
									<i class="fas fa-star-half-alt fa-sm"></i>
								</li>
							</ul>
						</div>

						<div class="col-lg-4 d-none d-lg-block">
							<img class="rounded-circle shadow-1-strong mb-4" src="./images/illustrations/face3.jpg"
								alt="avatar" style="width: 150px;" />
							<h5 class="mb-3">Maria Kate</h5>
							<p class="text-muted">
								<i class="fas fa-quote-left pe-2"></i>
								At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
								praesentium voluptatum deleniti atque corrupti.
							</p>
							<ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="fas fa-star fa-sm"></i></li>
								<li><i class="far fa-star fa-sm"></i></li>
							</ul>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>


	<!-- paymentcart-section -->
	<section class="paymentcart-section">
		<div class="row justify-content-center h-100">
			<div class="col-12 col-md-12 text-center">
				<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h4>
				<h2> Supported payment systems in our store
				</h2>
			</div>
			<div class="container pt-4 col-12 col-md-12 text-center">

				<ul
					class="container align-center text-center d-flex align-items-center flex-row flex-wrap list-unstyled ul-list">
					<li><img src="./images/illustrations/paymentcart/amazon.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/american-express.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/bitcoin.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/diners-club.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/ebay.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/discover.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/jcb.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/master-card.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/paypal.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/stripe.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/union-pay.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/visa.png" alt=""></li>
					<li><img src="./images/illustrations/paymentcart/western-union.png" alt=""></li>
				</ul>
			</div>

		</div>


	</section>




	<footer class="footer-section">
		<div class="container">
			<div class="footer-cta pt-5 pb-5">
				<div class="row">
					<div class="col-xl-4 col-md-4 mb-30">
						<div class="single-cta">
							<i class="fas fa-map-marker-alt"></i>
							<div class="cta-text">
								<h4>Find us</h4>
								<span>1010 Avenue, sw 54321, Pune</span>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-md-4 mb-30">
						<div class="single-cta">
							<i class="fas fa-phone"></i>
							<div class="cta-text">
								<h4>Call us</h4>
								<span>9876543210 0</span>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-md-4 mb-30">
						<div class="single-cta">
							<i class="far fa-envelope-open"></i>
							<div class="cta-text">
								<h4>Mail us</h4>
								<span>mail@info.com</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-content pt-5 pb-5">
				<div class="row">
					<div class="col-xl-4 col-lg-4 mb-50">
						<div class="footer-widget">
							<div class="footer-logo">
								<a href="">SuperSavings Supermarket</a>
							</div>
							<div class="footer-text">
								<p>Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do eiusmod tempor
									incididuntut consec tetur adipisicing
									elit,Lorem ipsum dolor sit amet.</p>
							</div>
							<div class="footer-social-icon">
								<span>Follow us</span>
								<a href="#"><i class="fab fa-facebook-f facebook-bg"></i></a>
								<a href="#"><i class="fab fa-twitter twitter-bg"></i></a>
								<a href="#"><i class="fab fa-google-plus-g google-bg"></i></a>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 mb-30">
						<div class="footer-widget">
							<div class="footer-widget-heading">
								<>Useful Links</>
							</div>
							<ul>
								<li><a href="Home.jsp">Home</a></li>
								<li><a href="#">about</a></li>
								<li><a href="#">services</a></li>
								<li><a href="#">Contact</a></li>
								<li><a href="#">About us</a></li>
								<li><a href="#">Our Services</a></li>
								<li><a href="#">Expert Team</a></li>
								<li><a href="#">Contact us</a></li>
								<li><a href="#">Latest News</a></li>
							</ul>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 mb-50">
						<div class="footer-widget">
							<div class="footer-widget-heading">
								<>Subscribe</>
							</div>
							<div class="footer-text mb-25">
								<p>Don’t miss to subscribe to our new feeds, kindly fill the form below.</p>
							</div>
							<div class="subscribe-form">
								<form action="#">
									<input type="text" placeholder="Email Address">
									<button><i class="fab fa-telegram-plane"></i></button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright-area">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 text-center text-lg-left">
						<div class="copyright-text">
							<p>Copyright &copy; 2023, All Right Reserved <a href="">Raviraj bujawade</a></p>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 d-none d-lg-block text-right">
						<div class="footer-menu">
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="#">Terms</a></li>
								<li><a href="#">Privacy</a></li>
								<li><a href="#">Policy</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
		integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
		crossorigin="anonymous"></script>


</body>
</html>