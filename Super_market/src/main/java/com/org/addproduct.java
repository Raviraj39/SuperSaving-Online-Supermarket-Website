package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addproduct")
public class addproduct extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
	    int p_id = Integer.parseInt(request.getParameter("input1"));
		String p_name = request.getParameter("input2");
		String p_category = request.getParameter("input3");
		String p_price = request.getParameter("input4");
		String active = request.getParameter("active");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
			Statement stat = conn.createStatement();
			stat.executeUpdate("insert into addproductadmin (p_id,p_name,p_category,p_price,p_active) values('"+p_id+"','"+p_name+"','"+p_category+"','"+p_price+"','"+active+"')");
			//out.println("data inserted");
			response.sendRedirect("AddNewProduct.jsp?msg=done");
			
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("AddNewProduct.jsp?msg=wrong");

		}
	    
	}

}