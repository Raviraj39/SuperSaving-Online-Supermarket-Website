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
	        	
			        	
		<%@ include file="Header.jsp"  %>
		
		
<%
		String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
<p class="alert text-warning">Product added successfully!</p>
<%} %>
<% 
if("exist".equals(msg))
{
%>
<p class="alert text-warning">Product already exist in you cart! Quantity  increased!</p>
<%} %>
<% 
if("invalid".equals(msg))
{
%>

<p class="alert text-warning">Something went to wrong ! try again!</p>
<%} %>
	<section>
		<div class="mx-0 my-0 p-0">
			<div class="d-flex flex-coloumn justify-content-center flex-wrap align-items-center m-0 p-0">
				<%
			        try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
						Statement stat = conn.createStatement();
						ResultSet rs=stat.executeQuery("select * from addproductadmin where p_active='yes' ");
						while(rs.next()) {
								
			        %>
				<div class="product-card  col-12 col-md-6 col-xl-3 mx-2  ">
						<div class="badge">NEW</div>
						<div class="product-tumb">
						
							<h2 class="box"><i class="fa-solid fa-box-open fa-2xl"></i></h2>
						</div>
						<div class="product-details">
							<span class="product-catagory"><%= rs.getString(3) %>   </span>
							<h4><a href=""><%= rs.getString(2) %></a></h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
							<div class="product-bottom-details">
								<div class="product-price"><%= rs.getString(4) %></div>
								<div class="product-links">
									<a href=""><i class="fa fa-heart"></i></a>
									<a href=""><i class="fa fa-shopping-cart"></i></a>
								</div>
								<button class="addcart"> <a href="addtocart.jsp?id=<%= rs.getString(1) %>" class="text-decoration-none text-white">Add to Cart</a> </button>
							</div>
						</div>
					</div>
					<%
					}
        }catch(Exception e) {
			e.printStackTrace();
		}
        
          
          %>
	
				
						
					
			</div>
			
		</div>
	</section>
	
	
	     <%@ include file="Footer.jsp" %>
	
</body>
</html>