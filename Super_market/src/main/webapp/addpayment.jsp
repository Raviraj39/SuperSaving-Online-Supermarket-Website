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
<link rel="stylesheet" href="css/addpayment.css">
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
if("ordered".equals(msg))
{
%>
<p class="alert">Products Ordered Successfully</p>
<%} %>

<% 
if("invalid".equals(msg))
{
%>
<p class="alert text-warning">Something went to wrong ! try again!</p>
<%} %>
 <div class="container my-5">

		<table>
		<thead>
		
		<%
			String email=session.getAttribute("email").toString();
			int total=0;
			int sno=0;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
		
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
				Statement stat = conn.createStatement();
				ResultSet rs=stat.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL ");
				while(rs.next()) {
					total=rs.getInt(1);
		%>
		
		          <tr> 
		          <th scope="col"><a href="mycart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
		            <th scope="col" style="background-color: yellow;">Total: <%out.println(total); %> <i class="fa fa-inr"></i> </th>
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
		          </tr>
		        </thead>
		        <tbody>
		        
		         <%
				}
			ResultSet rs1=stat.executeQuery("select * from addproductadmin inner join cart on addproductadmin.p_id = cart.productid and cart.email='"+email+"' and cart.address is NULL" );
		    while(rs1.next()) {
		    	
		    
		    %>
		          <tr>
		          <%sno =sno+1; %>
		            <td><% out.println(sno); %></td>
		            <td><%= rs1.getString(2) %></td>
		            <td><%= rs1.getString(3) %></td>
		            <td><i class="fa fa-inr"></i><%= rs1.getInt(4) %> </td>
		            <td> <%= rs1.getInt(8) %></td>
		            <td><i class="fa fa-inr"></i> <%= rs1.getInt(9) %></td>
		            </tr>
		        
		        <% 
		    }
		    ResultSet rs2=stat.executeQuery("select *from register where email='"+email+"' ");
			while(rs2.next()) {
		         
		         
		         %>
		        </tbody>
		    
		      </table>
		       
		        </div>
		      
       
   
<hr style="width: 100%">
<form action="Paymentform" method="post" class="px-5 bg-warning text-black parentform">
	<div class="py-5">
		 <div class="left-div">
		 <h3>Enter Address</h3>
			<input type="text" class="input-style" name="address"  placeholder="Enter the address">
		 </div>
		
		<div class="right-div">
		<h3>Enter city</h3>
		<input type="text" class="input-style" name="city"  placeholder="Enter the city">
		</div> 
		
		<div class="left-div">
		<h3>Enter State</h3>
		<input type="text" class="input-style" name="state"  placeholder="Enter the state">
		</div>
		
		<div class="right-div">
		<h3>Enter country</h3>
		<input type="text" class="input-style" name="country"  placeholder="Enter the country">
		
		</div>
		<p style="color: red">*If there is no address its mean that you did not set you address!</p>
		<p style="color: red">*This address will also updated to your profile</p>
		<hr style="width: 100%">
		<div class="left-div">
		<h3>Select way of Payment</h3>
		 <select name="payment" id="payment" class="input-style">
			<option value="COD">Cash On Delivery</option>
			<option value="UPI">UPI</option>
			</select>
		</div>
		
		<div class="right-div">
		<h3>Pay online on this SuperMarket.com</h3>
		<input type="text" class="input-style" name="Tid" placeholder="Enter the Transaction ID ">
		
		<p style="color: red">*If you select online Payment then enter you transaction ID here otherwise leave this blank</p>
		</div>
		<hr style="width: 100%">
		
		<div class="left-div">
		<h3>Mobile Number</h3>
		<input type="text" class="input-style" name="mobno" value=" <%= rs2.getString(5) %>">
		<p style="color: red">*This mobile number will also updated to your profile</p>
		</div>
		<div class="right-div mb-5">
		
		<p style="color: red">*If you enter wrong transaction id then your order will we can cancel!</p>
				
		<button class="button " type="submit">Proceed to Grab Your Product<i class='far fa-arrow-alt-circle-right'></i></button>		
				
		<p style="color: red">*Fill form correctly</p>
		</div>
		
	</div>

	
</form>
	<%
	        }}
				catch(Exception e) {
				e.printStackTrace();
			}
	        
%>
	
	
	          
	      
<%@ include file="Footer.jsp"%>

</body>
</html>