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
<link rel="stylesheet" href="css/homestyle.css">
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


<div style="color: black; text-align: center; font-size: 30px;" class="mt-5 mb-5">My Cart <i class='fas fa-cart-arrow-down'></i>

		
<%
		String msg=request.getParameter("msg");
if("notpossible".equals(msg))
{
%>
<p class="alert">There is only one Quantity! So click on remove!</p>
<%} %>


<%
if("inc".equals(msg))
{
%>
<p class="alert">Quantity  Increased Successfully!</p>
<%} %>
<%
if("dec".equals(msg))
{
%>
<p class="alert">Quantity  Decreased Successfully!</p>
<%} %>
<%
if("removed".equals(msg))
{
%>
<p class="alert">Product Successfully Removed!</p>
<%} %>
</div>
<div class="container my-5">
<table >
<thead>


  <%
      
      	int total=0;
      	int sno=0;
      	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
			Statement stat = conn.createStatement();
			String email=session.getAttribute("email").toString();
			ResultSet rs=stat.executeQuery("select sum(total) from cart where email='"+email+"'and address is NULL ");
			while(rs.next()) {
				total=rs.getInt(1);
	%>

          <tr>
            <th scope="col" style="background-color: yellow;">Total:<%out.println(total); %> <i class="fa fa-inr"></i> </th>
          <%if(total>0){ %>
          
            <th scope="col"><a href="addpayment.jsp">Proceed to order</a></th><%} %>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
        <tbody>
      
    <%}
	ResultSet rs1=stat.executeQuery("select * from addproductadmin inner join cart on addproductadmin.p_id = cart.productid and cart.email='"+email+"' and cart.address is NULL" );
    while(rs1.next()) {
    	
    
    %>
          <tr>
			<%sno =sno+1; %>
           <td><% out.println(sno); %></td>
            <td><%= rs1.getString(2) %></td>
            <td><%= rs1.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%= rs1.getString(4) %> </td>
            <td><a href="incrdecre.jsp?id=<%= rs1.getString(1) %>&quantity=inc"><i class='fas fa-plus-circle'></i></a><%= rs1.getString(8) %>  <a href="incrdecre.jsp?id=<%= rs1.getString(1) %>&quantity=dec"><i class='fas fa-minus-circle'></i></a></td>
            <td><i class="fa fa-inr"></i><%= rs1.getString(9) %> </td>
            <td><a href="removeproduct.jsp?id=<%= rs1.getString(1) %>">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>
          	<%
    }	
        }catch(Exception e) {
			e.printStackTrace();
		}
        
          
          %>




        </tbody>
      </table>
      </div>
      

 <%@ include file="Footer.jsp" %>
</body>
</html>