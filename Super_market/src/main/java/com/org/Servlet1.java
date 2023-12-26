package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String username= request.getParameter("username");
		String password = request.getParameter("password");
		String loginas =request.getParameter("loginas");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/super_marketone","root","root");
			Statement stat = conn.createStatement();
			
			int z=0;
			int y=0;
			switch(loginas) {
			  case ("admin"):
				  ResultSet rs=stat.executeQuery("select * from login where username='"+username+"' and password='"+password+"'");
				
				while(rs.next()) {
					z=1;
					HttpSession session = request.getSession();
					session.setAttribute("username",username);
					response.sendRedirect("AdminHome.jsp?msg=done");	
				}
				if(z==0) {
					  response.sendRedirect("Login.jsp?msg=wrong");
				}
			    break;
			  case ("customer"):
				ResultSet rs1=stat.executeQuery("select * from register where username='"+username+"' and password='"+password+"'");
				while(rs1.next()) {
					y=1;
					HttpSession session1 = request.getSession();
					session1.setAttribute("username",username);
					response.sendRedirect("Home.jsp?msg=done");
				}
				if(y==0) {
					  response.sendRedirect("Login.jsp?msg=wrong");
				}
			    break;
			  default:
				  response.sendRedirect("Login.jsp");
			}	
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
