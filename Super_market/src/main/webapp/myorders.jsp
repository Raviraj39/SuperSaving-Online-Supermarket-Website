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
</head>
<body>
<%@ include file="Header.jsp"  %>

<div style="color: black; text-align: center; font-size: 30px;" class="mt-5 mb-5">My Orders <i class='fab fa-elementor'></i></div>

<div class="container ">
<table>
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">category</th>
            <th scope="col"><i class="fa fa-inr"></i>  Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">Status</th>
              
          </tr>
        </thead>
        <tbody>
        
        <%
        int sno=0;
        
        try{
        	
        	Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
			Statement stat = conn.createStatement();
			String email=session.getAttribute("email").toString();
			ResultSet rs=stat.executeQuery("select * from cart inner join addproductadmin where cart.productid=p_id and cart.email='"+email+"' and cart.orderdate is not NULL ");
			while(rs.next()){
				sno=sno+1;
	%>

          <tr>
            <td><%out.println(sno);  %></td>
            <td><%= rs.getString(17) %></td>
            <td><%= rs.getString(18) %></td>
            <td><i class="fa fa-inr"></i><%= rs.getString(19) %> </td>
            <td><%= rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%= rs.getString(4) %></td>
             <td><%= rs.getString(11) %></td>
              <td><%= rs.getString(12) %></td>
               <td><%= rs.getString(13) %></td>
               <td><%= rs.getString(15) %></td>
            </tr>
            <%
		}
        	
        }catch(Exception e){
        	e.printStackTrace();
        	
        }
        
        
        %>
        </tbody>
      </table>
      
      </div>
      <br>
      <br>
      <br>


<%@ include file="Footer.jsp"  %>

</body>
</html>