package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Paymentform")
public class Paymentform extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		String email=session.getAttribute("email").toString();
		String address =request.getParameter("address");
		String city =request.getParameter("city");
		String state =request.getParameter("state");
		String country =request.getParameter("country");
		String payment =request.getParameter("payment");
		String mobno =request.getParameter("mobno");
		String tid =request.getParameter("Tid");
		String status="bill";
	
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
			
			PreparedStatement ps = conn.prepareStatement("update cart set address=? ,city=?,state=?,country=?,mobileNumber=?,orderdate=now(),deliverydate=DATE_ADD(orderdate,INTERVAL 7 DAY),paymentmethod=?,transcationId=?,status=? where email=? and address is NULL");
			ps.setString(1,address);
			ps.setString(2,city);
			ps.setString(3,state);
			ps.setString(4,country);
			ps.setString(5,mobno);
			ps.setString(6,payment);
			ps.setString(7,tid);
			if(status.equals("bill")) {
				status="processing";
				ps.setString(8,status);

			}
			ps.setString(9,email);
			ps.executeUpdate();
			response.sendRedirect("addpayment.jsp?msg=ordered");
			
			
			
			

			
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("addpayment.jsp?msg=invalid");
		}
	}

}
