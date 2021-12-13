package com.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updatedb
 */
@WebServlet("/updatedb")
public class updatedb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatedb() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);       
        PrintWriter out = response.getWriter();
        
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String size = request.getParameter("size");
        int qty = Integer.parseInt(request.getParameter("qty"));
        String desc = request.getParameter("desc");
        Double price = Double.parseDouble(request.getParameter("price"));   

        try {

        	String DB_DRIVER = "org.postgresql.Driver";
        	 String DB_HOST = "jdbc:postgresql://ec2-52-1-68-9.compute-1.amazonaws.com:5432" + "/d5km9ck2mkhhge";
        	 String DB_USER = "zxvmschpftpndi";
        	 String DB_PASSWORD = "048d8c2c117da63ee20a49c4140e16a45e1b5e1b2cd797d2e971e6e234407f2f";

        	 
        	 Class.forName(DB_DRIVER);
        	 Connection conn = DriverManager.getConnection(DB_HOST, DB_USER, DB_PASSWORD);
        	 Statement st = conn.createStatement();
            String sql = "update product set prodName='"+name+"', prodSize='"+size+"', prodQty='"+qty+"', prodDesc='"+desc+"', price='"+price+"' where prodID='"+id+"'";
            
            st.executeUpdate(sql);
            out.println("Data is Successfully Updated into product Table");
               }catch (ClassNotFoundException e) {

              e.printStackTrace();

        } catch (SQLException e) {

              e.printStackTrace();

         }response.sendRedirect("UpdateProduct.jsp");
    }

}