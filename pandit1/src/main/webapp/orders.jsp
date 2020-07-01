 <%@page import="com.mysql.cj.protocol.Resultset"%>
<head>
        <title>GrosiKart</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
    
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="node_modules/bootstrap-social/bootstrap-social.css">
       
  <!--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  -->    
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
        <link rel="stylesheet" href="css/styles.css">
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
     background: rgb(115, 134, 213);
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: white;
  display: block;
  transition: 0.3s;
  
    width: 90%;
    margin-left: 5%;
}

.sidenav a:hover {
  color:  rgb(115, 134, 213);
  background:white;
}
.closebtn:hover{
	 color: white;
  background: rgb(115, 134, 213);
}


.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
  
}
.closebtn{
 width: 100%;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
  .header{
   display: none;
  }
  .header2{
   display: none;
  }
  .bbb{
   display: block;
  }
}
.bbb{
	display: none;
}
@media only screen and (max-width: 600px) {
#main{
 display: none;
}
#phoneNav{
 display: block;
}
.header{
   display: none;
  }
	 .header2{
   display: none;
  }
  .bbb{
   display: block;
  }
}
</style>
        <style>
        
@media only screen and (max-width: 1400px) {
#phoneNav{
 display: none;
}
}
@media only screen and (max-width: 600px) {
#main{
 display: none;
}
#phoneNav{
 display: block;
}
}
        
        .problem-row{
width: 100%;
margin: 0;
}
            body{
                width: 100%;
            }
            a{
                
            }
            .collapsible {
              background-color: #777;
              color: white;
              cursor: pointer;
              padding: 18px;
              width: 100%;
              border: none;
              text-align: left;
              outline: none;
              font-size: 15px;
            }
            
            .active, .collapsible:hover {
              background-color: #555;
            }
            
            .content {
              padding: 0 18px;
              display: none;
              overflow: hidden;
              background-color: white;
              padding: 5%;
            }
            
            .form{
            
                font-size: 15px;
                border: 1px solid #04458F;
                padding: 1%;
                border-radius: 5px;
                width: 70%;
                margin-left: 15%;
                padding-left: 3%;
            }
            form input{
                border: none;
                width: 80%;
            }
            form button{
                background-color: white;
                border: none;
            }
             .no-outline:focus {
                  outline: none;
                  }
                  .fa-search{
                    float: right;
                     padding-right: 5%;
                     padding-top: 1%;

                  }
                  .myContainer{
                      height: 200px;
                  }
                  .carousel-item img{
                      height: 400;
                      filter:brightness(0.8);
                  }
                  
                  .item-form{
	    border: .2px solid #dcd8d8;
    text-align: center;
    padding-top: 5%;
    padding-bottom: 0;
}
.item-title{
	    text-align: center;
       background: #19bb2d47;
    color: black;
    text-decoration: none;
    font-weight:100;
    width: 96%;
    margin-left: 2%;
    padding: 2%;
    font-size: 17px;
}

.item-form:hover {
	 box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	 border-radius: 5px;
}
.sticky-top{
	height: 65px;
    padding-top: 5%;
}
	.item-row{
	width: 90%;
	margin-left: 5%;
	}

            </style>
            
            
             <style>
   @media (max-width: 480px){
   .logo{
	    margin-top: 2%;
}
.logo{
	    margin-top: 2%;
}
#impot-links{
 margin-left: -25%;
}
}
   
  #link-box {
  background: #ddd;
    width: fit-content;
    /* height: 300px; */
    /* height: 160px; */
    padding: 5px;
    display: none;
    float: right; 
}
.toggle{
display: inline-block;
    max-width: 1000px;
    width: fit-content;
    margin-bottom: -10px;
    text-align: left;
    background: green;
    color: white;
    padding: 5%;
    font-size: 17px;
        float: left;
    }
    .responsive-menu .social1 {
    margin: 0 0 0 25px;
    float: left;
    margin-top: 20%;
}
   
   @media (max-width: 480px)
.restaurant-search-form .input-field {
    margin-bottom: 7px;
    min-width: 145%;
}
   
    input:focus{
  outline: 1px solid cadetblue;     /* oranges! yey */
}
   
   .chefbutton{
	float:right; 
	padding: 10px; 
	color: white; 
	margin-top: 3px;
	
	
}
 .dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 10px;
  font-size: 16px;
  border: none;
}

.dropdown {
margin-left: 20%;
    
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
<style>
body{
font-family: sans-serif;
}
.footer1 {
   position: fixed;
   left: 0;
   bottom: 0;
   font-size:40px;
   width: 100%;
   background-color: green;
   color: white;
   text-align: center;
}
.li{
    display: block;
    border-bottom: 1px solid black;
    width: 98%;
    margin-left: 1%;
}
.profile-container{
	margin-top: 3%;
    width: 90%;
    margin-left: 5%;
    padding: 2%;
}
.row-title{
	    border-bottom: 1px solid green;
    width: 90%;
}
.col-12 a{
	color: grey;
}
.col-12 a:hover {
	color: green;
}
.col-12{
	padding-top: 2%;
}
.edit-form{
margin-left: 10%;
    border: 1px solid grey;
    margin-top: 2%;
    width: 80%;
}
.form-title{
	    border-bottom: 1px solid black;
    background: #2953c778;
    color: white;
}
.edit-form input{
	border: 1px solid;
    padding: 2%;
    border-radius: 10px;
}
.row{
padding-bottom: 0;
}
.edit-form input:after {
	 border-radius: 10px;
	 border:1px solid green;
}
.col-3 h5{
 font-weight: bold;
}
.pop:hover {
	 box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
</style>  
    </head>
<body>
	  <jsp:include page="include/header.jsp" />
	  
	  <!-- code for order -->
	   <%@ page isELIgnored="false" %>
       		<%@ page import="java.sql.ResultSet" %>
       		<%@ page import="java.sql.Connection" %>
       		<%@ page import="java.sql.*" %>
			<% HttpSession registerSession=request.getSession();
				try{
					String orderUser=registerSession.getAttribute("orderUser").toString();
					if(orderUser.equals("1")){
						registerSession.setAttribute("orderUser", "0");
						out.println(" <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( 'Order Placed !' ,  'Order Successfully placed' ,  'success' );");
						out.println("});");
						out.println("</script>");
					}
					else if(orderUser.equals("2")){
						registerSession.setAttribute("orderUser", "0");
						out.println(" <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
						out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
						out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
						out.println("<script>");
						out.println("$(document).ready(function(){");
						out.println("swal ( 'Order Failed !' ,  'Try again' ,  'error' );");
						out.println("});");
						out.println("</script>");
					}
					
					
					
				}
				catch(Exception e){
					
				}
				
				
				%>
	  <!-- code for order -->
	  
	  
	  <div class="container">
	  	<div class="row">
	  		<div class="col-12" style="text-align: center;">
	  			<h3>My Orders</h3>
	  		</div>
	  	</div>
	  	<div class="row">
	  		<div class="col-12 col-md-9" style="margin-left: 10%;">
	  			<!-- code for data -->
	  				 <%@ page isELIgnored="false" %>
	  				 <%@ page import="java.sql.ResultSet" %>
       					<%@ page import="java.sql.Connection" %>
       					<%@ page import="java.sql.*" %>
	  				 <% HttpSession session3=request.getSession(); %>
	  				<% 	ResultSet rd=(ResultSet)request.getAttribute("rd"); %>
	  					<% 
	  					if(rd.next()){
	  						rd.previous();
	  						while(rd.next()){
	  							%>
	  							<!-- html -->
	  								<div class="row pop" style="border: 1px solid blue;margin-bottom: 2%;">
	  								<div class="col-12" style="border-bottom: 1px solid blue">
	  									<div class="row">
	  									<div class="col-8">
	  										<h5>Order No: <%=rd.getString(6) %></h5>
	  									</div>
	  									<div class="col-4">
	  										<h6>Rs <%=rd.getString(2) %></h6>
	  									</div>
	  								</div >
	  								</div>
	  								
	  									<%
	  									/*
	  			            			String url="jdbc:mysql://localhost:3306/grosikart";
	  			            	    	String uname="root";
	  			            	    	String pass="Prakash1";
	  			            	    	 */
	  			            	    	
	  			            		String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
	  			            		String uname="admin";
	  			            		String pass="uchiha7686";
                                       	String query="select * from grosikart_transactions_products where trans_id="+rd.getString(6);
                                		
                                		Class.forName("com.mysql.jdbc.Driver");
                                		Connection con=DriverManager.getConnection(url,uname,pass);
                                		PreparedStatement st=con.prepareStatement(query);
                                		
                                		
                                		
                                		ResultSet products=st.executeQuery();
                                		
                                		if(products.next()){
                                			products.previous();
                                			while(products.next()){
                                				%>
                                				<div class="col-12" id="loop-product">
                                					<div class="row">
                                					<div class="col-8">
                                						<h6><%=products.getString(5) %>  x  <%=products.getString(3) %></h6>
                                					</div>
                                					<div class="col-8">
                                						<h6 style="font-size: 12px;">Each unit Price : <%=products.getString(4) %>  </h6>
                                					</div>
                                				</div>
                                				</div>
                                				
                                				<% 
                                			}
                                		}
	  									
	  									%>
	  									<div class="col-12">
	  										<div class="row">
	  											<div class="col-8">
	  												<h5><span class="badge badge-danger"> <%=rd.getString(3) %></span> </h5>
	  											</div>
	  											<div class="col-4">
	  												<h5><span class="badge badge-danger" style="background-color: gray;"><span class="fa fa-clock-o"></span> <%=rd.getString(4) %></span></h5>
	  											</div>
	  										</div>
	  										
	  									</div>
	  								
	  								</div>
	  							
	  							<!-- html -->
	  							<% 
	  							
	  							
	  						}
	  						
	  					}
	  					else{
	  						%>
	  						
	  						<!-- html for no order -->
	  						
	  						<% 
	  					}
	  					%>
	  				
	  			<!-- code for data -->
	  		</div> 
	  	</div>
	  </div>
	  
	  	  
 <jsp:include page="include/footer.jsp" />

    </body>
    <script type="text/javascript">
        function searchFunction() {
           
            var input, filter, ul, li, a,i;
            input=document.getElementById("myinput");
            filter=input.value.toUpperCase();
            ul=document.getElementById("wrapper");
            li=ul.getElementsByClassName("li");
            var count=0;
           
            if(filter.length !="0"){
                
                ul.style.display="block";
               
            for(i=0; i<li.length; i++){
            	
                a=li[i].getElementsByTagName("button")[0];
               
                
                if(a.innerHTML.toUpperCase().indexOf(filter) > -1){
                    li[i].style.display="block";
                    count++;
                  
                }
                else{
                    li[i].style.display="none";
                    }
    
            }
            if(count==0){
                document.getElementById("noli").style.display="block";
                }
            else{
                document.getElementById("noli").style.display="none";
                }
            
        }
        
        else{
            ul.style.display="none";
            }
    
        }
    
    </script>
    
<script>
    // Get the modal
    var modal = document.getElementById('id01');
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }

    var modal = document.getElementById('id02');
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
    </script>
     
     <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
     <script src="node_modules/jquery/dist/jquery.slim.min.js"></script>
     <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
     <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
      
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</html>
	  