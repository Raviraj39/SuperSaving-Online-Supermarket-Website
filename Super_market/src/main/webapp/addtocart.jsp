
     <%@page import ="java.sql.*"%>
      <%@page import ="java.io.IOException" %>
    <%@ page import ="java.io.PrintWriter"%>

<% 
		String email=session.getAttribute("email").toString();
		String product_id= request.getParameter("id");
		int quantity =1;
		int product_price=0;
		int product_total=0;
		int cart_total=0;
		
		
		int z=0;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
			Statement stat = conn.createStatement();
			ResultSet rs=stat.executeQuery("select * from addproductadmin where p_id='"+product_id+"'");
			while(rs.next()) {
				product_price=rs.getInt(4);
				product_total=product_price;
			}
			
			ResultSet rs1=stat.executeQuery("select * from  cart where productid='"+product_id+"' and email ='"+email+"' and address is NULL ");
			
			while(rs1.next()) {
				cart_total=rs1.getInt(4);
				cart_total= cart_total+product_total;
				quantity =rs1.getInt(3);
				quantity =quantity +1;
				z=1;
			}
			if(z==1) {
				stat.executeUpdate("update cart set total='"+cart_total+"',quantity='"+quantity+"' where productid ='"+product_id+"' and email='"+email+"' and address is NULL ");
				response.sendRedirect("products.jsp?msg=exist");
			}
			if(z==0) {
				PreparedStatement ps = conn.prepareStatement("insert into cart (email,productid ,quantity,total,price)values(?,?,?,?,?)" );
				ps.setString(1,email);
				ps.setString(2,product_id);
				ps.setInt(3,quantity);
				ps.setInt(4,product_total);
				ps.setInt(5,product_price);
				ps.executeUpdate();
				response.sendRedirect("products.jsp?msg=added");
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("products.jsp?msg=invalid");

		}
		
		
		%>	

