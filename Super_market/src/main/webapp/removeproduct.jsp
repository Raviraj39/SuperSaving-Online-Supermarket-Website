 <%@page import ="java.sql.*"%>
 <%@page import ="java.io.IOException" %>
 <%@ page import ="java.io.PrintWriter"%>
 
 <% 
 
 String email=session.getAttribute("email").toString();
 String id = request.getParameter("id");
 
 try{
	 
 
	Class.forName("com.mysql.cj.jdbc.Driver");	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from cart where email='"+email+"' and productid='"+id+"' and address is NULL ");
	response.sendRedirect("mycart.jsp?msg=removed");

 }catch(Exception e){
	 e.printStackTrace();
 }
 
 %>