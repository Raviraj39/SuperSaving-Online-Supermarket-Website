<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*"%>
      <%@page import ="java.io.IOException" %>
    <%@ page import ="java.io.PrintWriter"%>
    <%@ include file="AdminHome.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SuperSaving Supermarket</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

<h2><a class="back" href="allProductEdit.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>

<%
String id= request.getParameter("id");

try {
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
	Statement stat = conn.createStatement();
	ResultSet rs=stat.executeQuery("select * from addproductadmin  where p_id='"+id+"'");
	while(rs.next()) {

%>

<form action="editProductaction" method="post" class="container text-black ">
<div class="container mx-5  row  " >
		<div class="col-12 ">
		<h3 >Product ID:  <%= rs.getString(1) %></h3>
		<input type="hidden" name="input1" value=" <%= rs.getString(1) %>">
		</div>
		<div class="col-12 col-md-6 my-3">
		 <h3>Enter Name</h3>
		 	<input type="text" class="input-style" name="input2" value=" <%= rs.getString(2) %>">
		 
		</div>

		<div class=" col-12 col-md-6 my-3">
		<h3>Enter Category</h3>
		<input type="text"  class="input-style" name="input3" value=" <%= rs.getString(3) %>">
		 
		</div>
		
		<div class="col-12 col-md-6 my-3">
		<h3>Enter Price</h3>
		<input type="text" class="input-style" name="input4" value=" <%= rs.getString(4) %>">
		</div>
		
		<div class=" col-12 col-md-6 my-3">
		<h3>Active</h3>
		<select name="active" class="input-style" >
			<option value="yes">Yes</option>
			<option value="no">No</option>
		</select>

		</div>
		
		<div class=" col-12  my-3">
		<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i>
		</div>
		</button>
		</div>

</form><% 
	}}catch(Exception e) {
		e.printStackTrace();
	}
    


%>

</body>
</html>