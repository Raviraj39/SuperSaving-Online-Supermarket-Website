 <%@page import ="java.sql.*"%>
 <%@page import ="java.io.IOException" %>
 <%@ page import ="java.io.PrintWriter"%>
 
 <%
 
 String email=session.getAttribute("email").toString();
 String id = request.getParameter("id");
 String indec = request.getParameter("quantity");
 
 int price=0;
 int total=0;
 int quantity=0;
 int final_total=0;
 try{
		Class.forName("com.mysql.cj.jdbc.Driver");

	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
	Statement stat = conn.createStatement();
	ResultSet rs=stat.executeQuery("select * from cart where email='"+email+"' and productid='"+id+"' ");
	while(rs.next()){
		price=rs.getInt(5);
		total=rs.getInt(4);
		quantity=rs.getInt(3);
	}
	if(quantity == 1 && indec.equals("dec") ){
		response.sendRedirect("mycart.jsp?msg=notpossible");
	}
	else if(quantity != 1 && indec.equals("dec") ){
		total =total-price;
		quantity=quantity-1;
		stat.executeUpdate("update cart set total='"+total+"', quantity='"+quantity+"' where productid ='"+id+"' and email='"+email+"' and address is NULL  ");
		response.sendRedirect("mycart.jsp?msg=dec");
	}
	else{
		total =total+price;
		quantity=quantity+1;
		stat.executeUpdate("update cart set total='"+total+"', quantity='"+quantity+"' where productid ='"+id+"' and email='"+email+"' and address is NULL  ");
		response.sendRedirect("mycart.jsp?msg=inc");
	}
	 
	 
 }catch(Exception e){
	 e.printStackTrace();
	 
 }
 
 %>