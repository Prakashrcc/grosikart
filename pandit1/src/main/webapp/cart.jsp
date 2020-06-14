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
.total-container{

}
.continue-btn{
	background: lightgrey;
    color: black;
    padding: 2%;
    padding-left: 10%;
    padding-right: 10%;
    border-radius: 10px;
    margin-top: 60%;
}

 @media (max-width: 480px){
 
 	.total-container{
 		margin:0;
 	}
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
p{
 margin: 0;
 padding: 0;
}
.row{

}
h4{
	font-size: 16px;
}
.border{
		padding:0;
	    padding-bottom: 2%;
    padding-top: 2%;
    border-bottom: 1px solid #1919ff;
}
.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
.quantity-button{
	width: 50%;
	padding-bottom: 0;
    border: 1px solid #77cc6d;
    border-radius: 5px;
	
}
.total-card{
	padding: 2%;
    border: 1px solid #0980ff;
    border-radius: 10px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
.checkout{
 	    border: 1px solid blue;
    padding-top: 2%;
    padding-bottom: 2%;
    padding-left: 8%;
    padding-right: 8%;
    border-radius: 10px;
 	
}
.checkout:hover {
	background: blue;
	color: white;
}
.problem-row{
width: 100%;
margin: 0;
}
</style>
    </head>
<body> 
	<jsp:include page="include/header.jsp"></jsp:include>
	<div class="container" style="width: 90%;margin-left: 5%;margin-top: 2%;background: #efeeee57;">
	<div class="row" >
		<div class="col-12" style="padding-left: 4%;
    padding-right: 4%;">
			<h4 style=" border-bottom: 1px solid #3e5db3;; padding:1%;">Your Cart</h4>
			
		</div>
		<hr size="10px">
	</div>
	<div class="row" style="padding-left: 4%;
    padding-right: 4%;">
		<div class="col-6" style="    background: #77cc6d;
    color: white;">
		<p style="margin-top: 1%;margin-left: 2%;">Item Descriptions</p>
		</div>
		
		<div class="col-3" style="    background: #77cc6d;
    color: white;">
			<p style="margin-top: 2%;">Quantity</p>
		</div>
		<div class="col-3" style="    background: #77cc6d;
    color: white;">
			<p style="margin-top: 2%;">Sub Total</p>
		</div>
		
	</div>
	
	
	
	
	<!-- cart -->
	<div class="col-md-12" style="padding-left: 4%;padding-right: 4%;">
    		<div class="">
    			<div class="">
    			
    			<div class="res">
    			
      			  <div id="cart-value" class="">
           		 <div class="kitchen-content">
              	 
               	

            </div>
            </div>
            <div class="row">
            <div class="dishes col-12">
            
               
                <div  id="dish-name-parent" class="dish-name" style="    display: grid;">
                
                    <h4 id="dish-name"></h4>
                    
                    
                    
                   
                </div>
                
               
            </div>
            </div>
           
            
            	<div class="row">
            		<div class="col-12 col-md-6">
            			<a class="continue-btn" href="home">Continue Shopping</a>
            		</div>
            		<div class=" col-12 col-md-6 total-container" style="float:right">
            			<div class="row total-card">
            				<div class="col-12">
            				<div class="row">
            				<div class="col-10">
            					<div class="row">
            						<div class="col-8">
            							<h5 >Subtotal</h5>
            						</div>
            						<div class="col-4">
            							<h5 id="total-price"></h5>
            						</div>
            					</div>
            					<div class="row">
            						<div class="col-8">
            							<h5 >Delivery Charges</h5>
            						</div>
            						<div class="col-4">
            							<h5 >**</h5>
            						</div>
            					</div>
            					<div class="row" style="border-top: 1px solid;
    padding-top: 2%;">
            						<div class="col-8">
            							<h2 >Total</h2>
            						</div>
            						<div class="col-4">
            							<h2 id="total2"></h2>
            						</div>
            					</div>
            				</div>
            				<div class="col-2" style="border-left: 1px solid black; color:green;">
            					<span class="fa fa-tag"></span>
            					<h4>You saved!<br><h4 id="discount"></h4> </h4>
            					
            				</div>
            				</div>
            				
            				<div class="row">
            				<div class="col-12">
            					<a><button class="checkout">CHECKOUT <span class="fa fa-arrow-right"></span></button></a>
            				</div>
            				</div>
            				
            				<div class="row">
            				<div class="col-12">
            					<p>**Delivery charges will be calculated at Checkout
            				</div>
            				</div>
            			</div>
            			</div>
            			
            		</div>
            	
            	</div>
            	
            	</div>
            </div>
            
          
            </div>
            </div>
        </div>
        </div>
        </div>
	
	
	<!-- cart -->
	
	
	   <div id="no-item" style="display:none">
        <h1>Cart is Empty..</h1>
        <h6>Please add some food..</h6>
        </div>
	
	<jsp:include page="include/footer.jsp"></jsp:include>

</body>

    <script>
    
    var totalprice=0;
    var totalMarked=0;
    if(localStorage.length==1){
		document.getElementById("cart-value").style.display="none";
		document.getElementById("no-item").style.display="block";
        }
    else{
        var val=0;
        
        for(var i=0; i< localStorage.length; i++){

            var dish=JSON.parse(window.localStorage.getItem(localStorage.key(i)));
            var x1=(localStorage.key(i));
            
            if(x1!="value"){

            	  var id=x1.substring(4,x1.length);
                 
            	 
			var div=document.createElement("div");
			div.setAttribute("id","div"+id);
			div.setAttribute("class","item-cart ");
			var contain=document.createElement("div");
			contain.setAttribute("class","m1 col-6");
			
            var para = document.createElement("h4");
            para.setAttribute("style","color:grey");
            var node = document.createTextNode(dish.name);
            var product_brand=document.createTextNode(dish.brand+" ");
            var product_weight=document.createTextNode(" "+dish.weight);
           
            
            var product_mrp=document.createTextNode("MRP: "+dish.mrp);


            
            var product_price=document.createTextNode(" "+dish.price);
           
            var line_break=document.createElement("br");
            var line_break1=document.createElement("br");
            para.appendChild(product_brand);
            para.appendChild(line_break);
            para.appendChild(node);
            para.appendChild(product_weight);
            para.appendChild(line_break1);
            para.appendChild(product_price);
            

		var input=document.createElement("input");
			input.setAttribute("name","dish"+val);
			val=val+1;
			input.setAttribute("value",id+"#"+dish.quantity);
			input.setAttribute("style","display:none;");
			input.setAttribute("id","input"+id);
		
            
            var element = document.getElementById("dish-name-parent");
            var child = document.getElementById("dish-name");
            

           var  para1 = document.createElement("h6");
           var  node1 = document.createTextNode(dish.price);
           // para1.appendChild(node1);
           contain.appendChild(para);

            var quantity=document.createElement("div");
            quantity.setAttribute("class","product col-6");
            quantity.setAttribute("id","product");
            var quantminus=document.createElement("button");
            quantminus.setAttribute("onclick","remove("+id+")");
            quantminus.setAttribute("class","minusbtn col-4");
            var text=document.createTextNode("-");
            quantminus.appendChild(text);

            var h4=document.createElement("h4");
            h4.setAttribute("id","no"+id);
            h4.setAttribute("class"," col-4");
          
            text=document.createTextNode(dish.quantity);
            h4.appendChild(text);

            var quantplus=document.createElement("button");
            quantplus.setAttribute("onclick","addMore("+id+")");
            quantplus.setAttribute("class","plusbtn col-4");
            text=document.createTextNode("+");
            quantplus.appendChild(text);

            var row2=document.createElement("div");
			row2.setAttribute("class","row quantity-button");
            row2.appendChild(quantminus);
            row2.appendChild(h4);
            row2.appendChild(quantplus);

            quantity.appendChild(row2);
        	
            var total=document.createElement("h4");
            total.setAttribute("id","item-price"+id);
            total.setAttribute("class","col-6");


			var mrp=(dish.mrp).substring(3,dish.mrp.length);
			var mrpPrice=parseInt(mrp);
			
			
            var rs=(dish.price).substring(3,dish.price.length);
            var itemprice=parseInt(rs);
            var itemquant=parseInt(dish.quantity);
            itemprice=itemprice*itemquant;
            totalprice=totalprice+itemprice;
            var totalvalue=document.createTextNode("Rs "+itemprice);
            total.appendChild(totalvalue);

            mrpPrice=mrpPrice*itemquant;
            totalMarked=totalMarked+mrpPrice;

			var contain2=document.createElement("div");
			contain2.setAttribute("class","m col-6");

			var row1=document.createElement("div");
			row1.setAttribute("class","row ");
			row1.appendChild(quantity);
			row1.appendChild(total);
			contain2.appendChild(row1);


			var row=document.createElement("div");
			row.setAttribute("class","row border");

			row.appendChild(contain);
			row.appendChild(contain2);

			
          //  div.appendChild(input);
            div.appendChild(row);
       //     div.appendChild(para1);
            
         //   div.appendChild(total);
         
         var element1=document.getElementById("form");
         if(element1!=null){
         var child1=document.getElementById("but");
         element1.insertBefore(input,child1);
            }
             
            element.insertBefore(div,child);
         
            
            }

		document.getElementById("total-price").innerHTML="Rs "+totalprice;

		document.getElementById("total2").innerHTML="Rs "+totalprice;

		var discount=totalMarked-totalprice;
		document.getElementById("discount").innerHTML="Rs "+discount;
		
         
		
		
        }
        var inputTotal=document.createElement("input");
		inputTotal.setAttribute("name","totalPrice");
		inputTotal.setAttribute("value",totalprice);
		inputTotal.setAttribute("style","display:none;");
		inputTotal.setAttribute("id","inputTotal");
		
		 var element = document.getElementById("form");
         if(element1!=null){
             var child1=document.getElementById("but");
             element1.insertBefore(inputTotal,child1);
                }
    }
    
    </script>
    
<script>
    
   




    	
		function addToCart(id){
			var z="cart"+id;
			
			var x=document.getElementById(z);
			
			x.style.display="none";


            var dish={
                name: document.getElementById("dish-name"+id).innerHTML,
                price: document.getElementById("dish-price"+id).innerHTML ,
                quantity: 1,
                }


			var cartitems=document.getElementById("cartitems");
			cartitems.innerHTML++;
			
			var modal = document.getElementById("myModal");

			// Get the button that opens the modal
			
            
                localStorage.setItem(("dish"+id),JSON.stringify(dish));
                localStorage.setItem("value",cartitems.innerHTML);
			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];

			// When the user clicks the button, open the modal 
			
			  modal.style.display = "block";
			

			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			  modal.style.display = "none";
			}
			var abc="product"+id;
			var b=document.getElementById(abc);
			 b.style.display="flex";

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			  if (event.target == modal) {
			    modal.style.display = "none";
			  }
			}



			
			}
		function remove(id){
			var i="no"+id;
			var no=document.getElementById(i); 
			no.innerHTML--;
			
			 var dish=JSON.parse(window.localStorage.getItem("dish"+id));
			 
			if(no.innerHTML=="0"){
				
                no.innerHTML++;
                localStorage.removeItem("dish"+id);
                var t="div"+id;

                document.getElementById(t).style.display="none";
                var rs=(dish.price).substring(3,dish.price.length);
                var itemprice=parseInt(rs);

                var mrp=(dish.mrp).substring(3,dish.mrp.length);
                var mrpPrice=parseInt(mrp);
                totalprice=totalprice-itemprice;
                totalMarked=totalMarked-mrpPrice;
                document.getElementById("total-price").innerHTML=totalprice;
                var discount=totalMarked-totalprice;
                document.getElementById("discount").innerHTML="Rs "+discount;

				
                
			}
            else{
                
            	
                dish.quantity=no.innerHTML;
                var rs=(dish.price).substring(3,dish.price.length);
                var itemprice=parseInt(rs);
                totalprice=totalprice-itemprice;
                var itemquant=parseInt(dish.quantity);
                itemprice=itemprice*itemquant;

                var mrp=(dish.mrp).substring(3,dish.mrp.length);
                var mrpPrice=parseInt(mrp);
                totalMarked=totalMarked-mrpPrice;
                var discount=totalMarked-totalprice;
                document.getElementById("discount").innerHTML="Rs "+discount;
               
                document.getElementById("total-price").innerHTML="Rs "+totalprice;
                document.getElementById("item-price"+id).innerHTML="Rs "+itemprice;

                document.getElementById("total2").innerHTML="Rs "+totalprice;

                localStorage.setItem("dish"+id,JSON.stringify(dish) );
                
                var input=document.getElementById("input"+id);

                
               
                
               
                
             
                
				document.getElementById("item-price"+id).innerHTML="Rs "+itemprice;
				
				
                
                
            }
			
			var cartitems=document.getElementById("cartitems");
			cartitems.innerHTML--;
			
            
			var cartitems1=document.getElementById("cartitems1");
			cartitems1.innerHTML=cartitems.innerHTML;
			
            localStorage.setItem("value",cartitems.innerHTML);

            if(localStorage.length==1){
				document.getElementById("cart-value").style.display="none";
				document.getElementById("no-item").style.display="block";
                }
            
			}
		function addMore(id){
			var i="no"+id;
			
			var no=document.getElementById(i);
			
			no.innerHTML++;
			var cartitems=document.getElementById("cartitems");
			cartitems.innerHTML++;
			var cartitems1=document.getElementById("cartitems1");
			cartitems1.innerHTML++;
            
            localStorage.setItem("value",cartitems.innerHTML);
            var dish=JSON.parse(window.localStorage.getItem("dish"+id));
                dish.quantity=no.innerHTML;
                

                var rs=(dish.price).substring(3,dish.price.length);
                var itemprice=parseInt(rs);
                totalprice=totalprice+itemprice;
                var itemquant=parseInt(no.innerHTML);
                itemprice=itemprice*itemquant;
                document.getElementById("total-price").innerHTML="Rs "+totalprice;
                document.getElementById("item-price"+id).innerHTML="Rs "+itemprice;

                document.getElementById("total2").innerHTML="Rs "+totalprice;
               
                
                localStorage.setItem("dish"+id,JSON.stringify(dish) );

               
                
				document.getElementById("item-price"+id).innerHTML="Rs "+itemprice;

				var mrp=(dish.mrp).substring(3,dish.mrp.length);
				var mrpPrice=parseInt(mrp);
				
		            totalMarked=totalMarked+mrpPrice;
				  var discount=totalMarked-totalprice;
	        		document.getElementById("discount").innerHTML="Rs "+discount;
                
               
                var input=document.getElementById("input"+id);
                
                input.setAttribute("value",id+"#"+no.innerHTML);
              
			
			}

	
    </script>
</html>