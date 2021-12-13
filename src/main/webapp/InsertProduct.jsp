<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import= "java.sql.SQLException"%>
<%@page import ="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INSERT</title>
</head>
<body>

<h1><center>Mom's Baby World<center></h1>
<form action="insertdb" method="post">
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
		Add Product
	  </div>
	  <div class="card-body"style="background-color:#dfe4ea">
		<blockquote class="blockquote mb-0">
		<div class="form-row">
				<div class="form-group col-md-6">
					<label for="id" style="color:black;font-size:16px;"><b>Product Id:</b></label>
					<input type="text" class="form-control" name="id" id="id" required autocomplete="off">
				</div>	
			
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="name" style="color:black;font-size:16px;"><b>Product Name:</b></label>
					<input type="text" class="form-control" name="name" id="name" required autocomplete="off">
				</div>	
				<div class="form-group col-md-6">
					<label for="price" style="color:black;font-size:16px;"><b> Price:</b></label>
					<input type="text" class="form-control" name="price" id="price" required autocomplete="off">
				</div>
			</div>
			
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="size" style="color:black;font-size:16px;"><b>Size:</b></label>
					<select class="form-control " name="size" id="size">  
						<option value="" >Choose </option>
						<option value="2-5 years" >2-5 years </option>
						<option value="0-6 months" >0-6 months </option>
					</select>
				</div>
				<div class="form-group col-md-6">
					<label for="qty" style="color:black;font-size:16px;"><b>Quantity:</b></label>
					<input type="text" class="form-control" name="qty" id="qty" required autocomplete="off">
				</div>	
			</div>
			
			<div class="form-row">
				<div class="form-group col-md-12">
					<label for="desc" style="color:black;font-size:16px;"><b>Description:</b></label>
					<input type class="form-control" name="desc" id="desc" rows="4" cols="50" required autocomplete="off">
				</div>
				
			</div>

					<center><button type ="submit" >Insert </button></center>

			
		</blockquote>
		</div>	
</div>
		
		

  
   
</form>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
