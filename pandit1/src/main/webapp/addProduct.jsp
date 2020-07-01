<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>GroSwift -Add product!</title>
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: darkslategrey;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
      
    color: white;
    font-size: 10px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 18px;
  color: white;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
background:white;
  color:darkslategrey ;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}
.sidenav .closebtn:hover{
background: darkslategrey;
color: white;
}

#main {
  transition: margin-left .5s;
  padding: 0;
 
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.container1{
padding: 0;
padding-left: 2%;
margin: 0;
padding-top: 1%;
background-color: darkcyan;
    color: white;
}
.btn{
    background: transparent;
    border: 1px solid white;
    border-radius: 10px;
    color: white;
    
}
.heading{
padding-left: 10%;
    border-bottom: 1px solid white;
    padding-bottom: 2%;
    width: 90%;
    margin-left: 5%;
}
.active{
background: #407f80;
}
.row{
width: 100%;
}
.container2{
margin-left: 5%;
    margin-top: 2%;
    border: 1px solid darkcyan;
    padding: 3%;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    margin-bottom: 5%;

}

.select{
width: 80%;
    border: 1px solid darkslategrey;
    padding: 1%;
    border-radius: 10px;
}
.btn1{
padding: 1%;
    padding-left: 10%;
    padding-right: 10%;
    border-radius: 10px;
    /* padding: 2%; */
    background: darkblue;
    color: white;
    border: none;
}
.btn1:hover {
	background: blue;
}
@media screen and (max-width:800px){
.h2{
 font-size: 17px; margin-top: 7%;
}
}
</style>
</head>
<body>

<!-- Modal for successfull adding product -->

 <%@ page isELIgnored="false" %>
       		<%@ page import="java.sql.ResultSet" %>
       		<%@ page import="java.sql.Connection" %>
       		<%@ page import="java.sql.*" %>
			<% HttpSession registerSession=request.getSession();
				try{
					String registerValue=registerSession.getAttribute("addProduct").toString();
					if(registerValue.equals("1")){
						registerSession.setAttribute("addProduct", "0");
						out.println(" <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( 'Adding Product Successfull !' ,  '' ,  'success' );");
						out.println("});");
						out.println("</script>");
					}
					else if(registerValue.equals("2")){
						registerSession.setAttribute("addProduct", "0");
						out.println(" <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( 'Adding Product Failed !' ,  'Try Again' ,  'error' );");
						out.println("});");
						out.println("</script>");
					}
					
					
					
				}
				catch(Exception e){
					
				}
				%>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <h4 class="heading">Inventory </h4>
  <a href="addCategory.jsp">Add Category</a>
  <a href="addSubcategory.jsp">Add SubCategory</a>
  <a href="#" class="active">Add Product</a>
  <a href="#">View Category </a>
  <a href="#">View SubCategory </a>
  <a href="#">View Products </a>
</div>

<div id="main">
	<div class="container-fluid container1">
		<div class="row" style="width: 100%;">
			<div class="col-2" style="text-align: left;">
				<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
			</div>
			<div class="col-8" style="text-align: center;     font-size: 17px;
   ">
				 <h2 class="h2">GroSwift Admin Panel</h2>
			</div>
			<div class="col-2" style="    text-align: right;
    padding-right: 5%; display: none;">
			 <button class="btn"><span class="fa fa-user"> </span> Login</button>
			</div>
		</div>
	</div>
	<div class="container container2" style="width: 90%;">
		<div class="row" style="width: 100%; margin-left: 4%;">
		<form action="addProduct" style="width: 100%; " method="post">
			<div class="row">
				<div class="col-12">
				 <h4 style="    width: fit-content;
    border-bottom: 1px solid black;">Add a new Product</h4>
				</div>
			</div>
			
			
			<div class="row" style="margin-top: 2%;">
				<div class="col-12">
				 <h6>SubCategory *</h6>
				</div>
				<div class="col-12">
					 <select id="subCategory" name="subCategory" class="select">
					 
					 <%@ page isELIgnored="false" %>
       					<%@ page import="java.sql.ResultSet" %>
       					<%@ page import="java.sql.Connection" %>
       					<%@ page import="java.sql.*" %>
       					
            			<%
            			/*
            			String url="jdbc:mysql://localhost:3306/grosikart";
            	    	String uname="root";
            	    	String pass="Prakash1";
            	    	 */
            	    	
            		String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
            		String uname="admin";
            		String pass="uchiha7686";
            			
            			String query="select * from grosikart_subcategory order by subcategory_name";
            			System.out.println(query);
            			Class.forName("com.mysql.jdbc.Driver");
            			Connection con=DriverManager.getConnection(url,uname,pass);
            			PreparedStatement st=con.prepareStatement(query);
            			
            			
            			
            			ResultSet subcategory=st.executeQuery();
            			
            			 if(subcategory.next()){
            	        	  
              				  subcategory.previous();
               			  while(subcategory.next()){
            			
            			
            			
            			%>
					 
					 
					 
  					  <option value="<%=subcategory.getString(1) %>"><%=subcategory.getString(3) %></option>
  					  
  					  <%
               			  }
            			 }
  					  
  					  
  					  %>
   						 
 					 </select>
				</div>
			</div>
			
			<div class="row" style="margin-top: 2%;">
				<div class="col-12">
				 <h6>Product Brand Name *</h6>
				</div>
				<div class="col-12">
					 <input type="text" name="product_brand_name" class="select" placeholder="Enter Product Brand Name">
				</div>
			</div>
			
			<div class="row" style="margin-top: 2%;">
				<div class="col-12">
				 <h6>Product Name *</h6>
				</div>
				<div class="col-12">
					 <input type="text" name="product_name" class="select" placeholder="Enter Product Name">
				</div>
			</div>
			
			
			<div class="row" style="margin-top: 2%;">
				<div class="col-12">
				 <h6>Product MRP *</h6>
				</div>
				<div class="col-12">
					 <input type="text" class="select" name="product_mrp" placeholder="Enter Product MRP">
				</div>
			</div>
			
			<div class="row" style="margin-top: 2%;">
				<div class="col-12">
				 <h6>Product Selling Price *</h6>
				</div>
				<div class="col-12">
					 <input type="text" class="select" name="product_selling" placeholder="Enter Product Selling Price">
				</div>
			</div>
			
			<div class="row" style="margin-top: 2%;">
				<div class="col-12">
				 <h6>Product Weight *</h6>
				</div>
				<div class="col-12">
					 <input type="text" class="select" name="product_weight" placeholder="Enter Product Weight">
				</div>
			</div>
			
			<div class="row" style="margin-top: 2%;">
				<div class="col-12">
				 <h6>Product Quantity *</h6>
				</div>
				<div class="col-12">
					 <input type="text" class="select" name="product_quantity" placeholder="Enter Product Quantity">
				</div>
			</div>
			
			<div class="row" style="margin-top: 2%;">
				<div class="col-12">
				 <h6>Product Image URL *</h6>
				</div>
				<div class="col-12">
					 <input type="text" class="select" name="product_image" placeholder="Enter Product Image Link">
				</div>
			</div>
			
			<div class="row" style="margin-top: 2%;">
				<div class="col-12">
				<button type="submit" class="btn1"> Add Product</button>
				</div>
				
			</div>
			
			</form>
		</div>
	</div>
	
 
  
  
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
   
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html> 
