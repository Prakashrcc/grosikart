<html>
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
       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
        <link rel="stylesheet" href="css/styles.css">
        <style>
        
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
</style>  
    </head>
    <body>
        <jsp:include page="include/header.jsp" />


        <!--  Carousal -->
        <div class="myContainer">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="fast.jpg" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                	
                    <h5>Fast Delivery</h5>
                    
                    <p>Get your products delivered in less than 2 hrs</p>
                    
                    </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="sale.jpg" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Great Discounts</h5>
                    <p>Get best discounts on all range of products</p>
                    </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="payment.png" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Pay Easily</h5>
                    <p>Pay for your products through wide range of payment gateways</p>
                    </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>

        <!--Main Contents -->
        <div class="main-contents" style="margin-top: 17%;">
        <div class="container">
         
            
            
              <%@ page isELIgnored="false" %>
       					<%@ page import="java.sql.ResultSet" %>
       					<%@ page import="java.sql.Connection" %>
       					<%@ page import="java.sql.*" %>
       
        					<% ResultSet rd=(ResultSet)request.getAttribute("rd"); %>
        					 <% 
       			   if(rd.next()){
        	  
       				  rd.previous();
        			  while(rd.next()){
          
        			  %>
        				 
            	<div class="row item-row" style=" text-align: center;">	
            		<div class="category-title col-12">
                          <h3 style="color: black; text-align: center;"><%=rd.getString(2) %></h3>
            <hr size="10" style="">
            </div>
           
            
            			<%
            			String url="jdbc:mysql://localhost:3306/grosikart";
            			String uname="root";
            			String pass="Prakash1";
            			
            			String query="select * from grosikart_subcategory where category_id="+rd.getString(1)+" ";
            			System.out.println(query);
            			Class.forName("com.mysql.jdbc.Driver");
            			Connection con=DriverManager.getConnection(url,uname,pass);
            			PreparedStatement st=con.prepareStatement(query);
            			
            			
            			
            			ResultSet subcategory=st.executeQuery();
            			
            			 if(subcategory.next()){
            	        	  
              				  subcategory.previous();
               			  while(subcategory.next()){
            			
            			
            			
            			%>
            			
            			<div class=" col-6 col-md-3 wow fadeIn" data-wow-delay="0.2s" >
            			<form class="item-form" style=" margin: 0.5%;" action="products" method="post" >
            			<input name="category" value="<%=rd.getString(2) %>"  style="display: none;" >
            			<input name="subcategory" value="<%=subcategory.getString(3) %>"  style="display: none;" >
            			<input name="category_id" value="<%=rd.getString(1) %>"  style="display: none;" >
            			<input name="subcategory_id" value="<%=subcategory.getString(1) %>"  style="display: none;" >
            			
            			 <button type="submit" style="  display: contents; text-align: left;  ">
            			 <img src="<%=subcategory.getString(4) %>" style="width:150px; height: 150px; margin-bottom: 3%;">
            			<h3 class="item-title"><%=subcategory.getString(3) %></h3>
            			</form>
            			
            			
            			</div>
            			 
          		
          			
                                   
                                        
                                       
                                        	<% } 
            			 }
            			 
            			 %>
            			 </div>
            			 <% 
            			 }
        			  %>
        			  
        			  
        			   </div>
        			  
        			  <% 
       			   }
          
          else{
        	  out.print("<h1>No Kitchens Found..</h1>");
          }
          	
          	%>
            
        </div>
        </div>
        </div>

        <!---->

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
                
                a=li[i].getElementsByTagName("a")[0];
                
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