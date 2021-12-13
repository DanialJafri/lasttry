<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import= "java.sql.SQLException"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));

String DB_DRIVER = "org.postgresql.Driver";
String DB_HOST = "jdbc:postgresql://ec2-52-1-68-9.compute-1.amazonaws.com:5432" + "/d5km9ck2mkhhge";
String DB_USER = "zxvmschpftpndi";
String DB_PASSWORD = "048d8c2c117da63ee20a49c4140e16a45e1b5e1b2cd797d2e971e6e234407f2f";


	Class.forName(DB_DRIVER);
	Connection conn = DriverManager.getConnection(DB_HOST, DB_USER, DB_PASSWORD);
    Statement st = conn.createStatement();
    st.executeUpdate("delete from product where prodID = '"+id+"'");
    //st.executeUpdate(dlteQuery);
    out.println("Deleted!!");
    response.sendRedirect("DeleteProduct.jsp");
%>