<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import= "java.sql.SQLException"%>
<%@page import ="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html UBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
%>
<h1><center>Mom's Baby World<center></h1>
<form action="EditProduct.jsp" method="post">
<div style="background-color:#95afc0">
	<div class="container">
		<div class="row">

			<div class="col-md-8 pt-2 pb-2" >
			<a class="pl-3" style="color:black" href="ViewProduct.jsp">View Product</a>
				<a class="pl-3 " style="color:black" href="InsertProduct.jsp">Add Product</a>
				<a class="pl-3" style="color:black" href="UpdateProduct.jsp">Edit Product</a>
				<a class="pl-3" style="color:black" href="DeleteProduct.jsp">Delete Product</a>
			</div>

			
		</div>
	</div>
</div>
<div class="container"><br><br>
<div class="card">
	  <div class="card-header"style="background-color:#ffffff">
		Edit Product 
	  </div>
	  <div class="card-body"style="background-color:#dfe4ea">
		<blockquote class="blockquote mb-0">
			<div class="form-row">
				
<table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">Product ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Size</th>
      <th scope="col">Quantity</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    
     <%
     String DB_DRIVER = "org.postgresql.Driver";
     String DB_HOST = "jdbc:postgresql://ec2-52-1-68-9.compute-1.amazonaws.com:5432" + "/d5km9ck2mkhhge";
     String DB_USER = "zxvmschpftpndi";
     String DB_PASSWORD = "048d8c2c117da63ee20a49c4140e16a45e1b5e1b2cd797d2e971e6e234407f2f";

     
     Class.forName(DB_DRIVER);
     conn = DriverManager.getConnection(DB_HOST, DB_USER, DB_PASSWORD);
 
       		 Statement st = conn.createStatement();

            String selectQuery = "SELECT * FROM product";
            pst = conn.prepareStatement(selectQuery);
            rs = pst.executeQuery();
          
            while(rs.next()){
        %>
            <tr width="100%">
                <td align="center"><%=rs.getInt("prodID") %></td>
                <td align="center"><%=rs.getString("prodName") %></td>
                <td align="center"><%=rs.getString("prodSize") %></td>
                <td align="center"><%=rs.getInt("prodQty") %></td>
                <td align="center"><%=rs.getString("prodDesc") %></td>
                <td align="center"><%=rs.getDouble("price") %></td>
                <td><a href="EditProduct.jsp?id=<%=rs.getString("prodID")%>" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">UPDATE</a></td>   
              
            </tr>
        <%} %>

   
  </tbody>
</table>
			</div>
		</blockquote>
	</div>
</div>
</div>

</form>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
</body>
</html>