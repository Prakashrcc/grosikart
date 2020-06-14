<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
	.item{
			margin:1%;
		    border: 1px solid #e4e3e3;
		  text-align:center;
		    padding: 1%;
	}
	.item:hover{
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	 border-radius: 5px;
	}
	
	.item-add{
		    background: #77cc6d;
    color: white;
    padding: 3%;
    border-radius: 5px;
    /* margin-left: 35%; */
    padding-left: 10%;
    padding-right: 10%;
    margin-top: 2%;
    }
    .item-add:hover{
     background: green;
    }
   .product button{
   	background: #77cc6d;
    /* font-size: 25px; */
    color: white;
   }
   .product{
   margin-top:3%;
   margin-bottom:1%;
   	border: 1px solid rgb(119, 204, 109);
    width: 50%;
    text-align: center;
    margin-left: 25%;
    border-radius: 5px;
    display: flex;
    padding-bottom: 0;
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
.problem-row{
width: 100%;
margin: 0;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
    </head>
<body> 
	<jsp:include page="include/header.jsp"></jsp:include>
	
	<div class="container" style="width: 90%;margin-left: 5%;margin-top: 1%;">
		<div class="row" style="padding-bottom: 0;">
		   <%@ page isELIgnored="false" %>
       		<%@ page import="java.sql.ResultSet" %>
       		<%@ page import="java.sql.Connection" %>
       		<%@ page import="java.sql.*" %>
       		<% ResultSet product=(ResultSet)request.getAttribute("rd"); %>
       		<% String category=request.getAttribute("category").toString(); %>
       		<% String subcategory=request.getAttribute("subcategory").toString(); %>
       		<% String size=request.getAttribute("size").toString(); %>
       			
       			<div class="col-12">
       				<h3 style="font-size: 15px;"><%=category %> > <%=subcategory %></h3>
       			</div>
       			<div class="col-12" style="text-align: center;">
       			  <h2 ><%=subcategory %> (<%=size %>)</h2>
       			  <hr>
       			</div>
       			</div>
       			
       			<div class="row" >
       		
        					 <% 
       			   if(product.next()){
        	  
       				  product.previous();
        			  while(product.next()){
          
        			  %>
        			   <%
        			  	  Integer off1=Integer.parseInt(product.getString(5));
        			  	Integer off2=Integer.parseInt(product.getString(6));
        			  	off1=off1-off2;
        			  	 
        			  	 %>
        			  <div class="col-12 col-md-3 item">
        			  
        			  <h4 style="text-align: end;">  <span class="badge badge-danger">  <i class="fa fa-tag fa-lg"></i> Save Rs <%=off1 %> </span></span></h4>
        			  	 <img src="<%=product.getString(9) %>" style="width:150px; height: 150px; margin-bottom: 3%;">
        			  	 
        			  	 </img>
        			  	
        			  	 
        			  	 <hr>
            			<h5 class="" style=" color: #b5b5b3; font-size: 15px; text-align: left;" id="dish-brand<%=product.getString(1) %>"><%=product.getString(3) %></h5>
            			<h3 style="font-size:17px; text-align: left;" id="dish-name<%=product.getString(1) %>"><%=product.getString(4) %></h3>
            			<h6 style="text-align: left;  color: #b5b5b3;" id="dish-weight<%=product.getString(1) %>"><%=product.getString(7) %></h6>
            			<div class="row" style="padding-bottom: 0;">
            			 <h6 class="" style="text-align: ;  color: #b5b5b3; font-size: 16px;margin-left: 5%;">MRP:</h6>
            			  <h6 style="text-decoration: line-through;" id="dish-mrp<%=product.getString(1) %>">Rs <%=product.getString(5) %></h6> 
            			 <h5 style="font-size: 18px; margin-left: 1%;" id="dish-price<%=product.getString(1) %>">Rs  <%=product.getString(6) %></h5> 
            			 
            			
            			</div>
            			<h4 style="color: green; font-size: 15px; text-align: left;">Stock Available</h4>
            			<!--  <button class="item-add">Add <span class="fa fa-shopping-basket"></span> </button>  -->
            			   <div class="ord-btn">
                                                                                   <button class="item-add" id="cart<%=product.getString(1) %>" onclick="addToCart(<%=product.getString(1) %>)">Add</button>
                                                                                </div>
                                                                                <div class="product row" id="product<%=product.getString(1) %>" style="display: none;">
                                                                                	
                                                                                	<button class="col-4" onclick="remove(<%=product.getString(1) %>)">-</button>
                                                                                	<h4 class="col-4" style="font-size: 15px;" id="no<%=product.getString(1) %>" > 1</h4>
                                                                                	<button class="col-4" onclick="addMore(<%=product.getString(1) %>)">+</button>
                                                                                	
                                                                                </div>
            			
            			
        			  </div>
        			  <%
        			  }
       			   }
        			  %>
        			  
        			  </div>
        			  
       
		 
		 
		
	</div>
	<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p style="color:green; font-size:25px;">Food added to the Cart..</p>
  </div>

</div>
	<jsp:include page="include/footer.jsp"></jsp:include>
	
	
	<div class="footer1" id="footer1" style="display: none;">
 <a href="cart.jsp"> <p style="color: white;">You have food in the cart... Click to see</p></a>
</div>



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
     <script>
    var cartitems=document.getElementById("cartitems");
	
	if(cartitems.innerHTML> "0"){
		
		var bottomCart=document.getElementById("footer1");
		
		
		}
	else{
		var bottomCart=document.getElementById("footer1");
		bottomCart.style.display="none";
		
		}
    
    for (var i = 0; i < localStorage.length; i++){
    var x1=(localStorage.key(i));
    var x2=x1.substring(0,4);
    x1=x1.substring(4, x1.length);
    if(x2 == "dish"){
   
    var z="cart"+x1;
    
			
			var x=document.getElementById(z);
            if(x==null){

            }
            else{
            
			x.style.display="none";


            var abc="product"+x1;
			var b=document.getElementById(abc);
			 b.style.display="flex";

             var ia="no"+x1;
			var no=document.getElementById(ia); 

			 var dish=JSON.parse(window.localStorage.getItem(localStorage.key(i)));
             
			no.innerHTML=dish.quantity;
    }
    }

}




    	
		function addToCart(id){
			var z="cart"+id;
			
			var x=document.getElementById(z);
			document.cookie=id;
			x.style.display="none";


            var dish={
                    brand: document.getElementById("dish-brand"+id).innerHTML,
                name: document.getElementById("dish-name"+id).innerHTML,
                price: document.getElementById("dish-price"+id).innerHTML ,
                quantity: 1,
                weight:document.getElementById("dish-weight"+id).innerHTML,
                mrp:document.getElementById("dish-mrp"+id).innerHTML,
                }


			var cartitems=document.getElementById("cartitems");
			cartitems.innerHTML++;
			cartitems1.innerHTML=cartitems.innerHTML;
			if(cartitems.innerHTML> "0"){
				var bottomCart=document.getElementById("footer1");
				
				}
			else{
				var bottomCart=document.getElementById("footer1");
				bottomCart.style.display="none";
				
				}
			var modal = document.getElementById("myModal");

			// Get the button that opens the modal
			
                
                localStorage.setItem(("dish"+id),JSON.stringify(dish));
                localStorage.setItem("value",cartitems.innerHTML);
			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];

			// When the user clicks the button, open the modal 
			
			  
			

			// When the user clicks on <span> (x), close the modal
			
			var abc="product"+id;
			var b=document.getElementById(abc);
			 b.style.display="flex";

			// When the user clicks anywhere outside of the modal, close it
			


			
			}
		function remove(id){
			var i="no"+id;
			var no=document.getElementById(i); 
			no.innerHTML--;
			if(no.innerHTML=="0"){
				var z="cart"+id;
				
				var x=document.getElementById(z);
				document.cookie=id;
				x.style.display="initial";

				var abc="product"+id;
				var b=document.getElementById(abc);
				 b.style.display="none";
                
                no.innerHTML++;
                localStorage.removeItem("dish"+id);
			}
            else{
               
                var dish=JSON.parse(window.localStorage.getItem("dish"+id));
                dish.quantity=no.innerHTML;
                localStorage.setItem("dish"+id,JSON.stringify(dish) );
            }
			var cartitems=document.getElementById("cartitems");
			cartitems.innerHTML--;
			if(cartitems.innerHTML> "0"){
				var bottomCart=document.getElementById("footer1");
				
				}
			else{
				var bottomCart=document.getElementById("footer1");
				bottomCart.style.display="none";
				
				}
			var cartitems1=document.getElementById("cartitems1");
			cartitems1.innerHTML=cartitems.innerHTML;
			
            localStorage.setItem("value",cartitems.innerHTML);
            
			}
		function addMore(id){
			var i="no"+id;
			
			var no=document.getElementById(i);
			
			no.innerHTML++;
			var cartitems=document.getElementById("cartitems");
			cartitems.innerHTML++;
			if(cartitems.innerHTML> "0"){
				var bottomCart=document.getElementById("footer1");
			
				}
			else{
				var bottomCart=document.getElementById("footer1");
				bottomCart.style.display="none";
				
				}
           
            localStorage.setItem("value",cartitems.innerHTML);
            var dish=JSON.parse(window.localStorage.getItem("dish"+id));
                dish.quantity=no.innerHTML;
                localStorage.setItem("dish"+id,JSON.stringify(dish) );
                var cartitems1=document.getElementById("cartitems1");
    			cartitems1.innerHTML=cartitems.innerHTML;
			
			}
		

	
    </script>
    
    
</html>