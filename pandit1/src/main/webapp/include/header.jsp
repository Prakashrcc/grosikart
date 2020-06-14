 <div class="container">
            <div class="row problem-row" style="padding-bottom: 0;">
                <div class="col-12 upper-header">
                   <h3 style="color: white; float: right; font-size: 15px; font-weight: 200;margin-top: 1%; margin-right: 2%;">Call us at 7980797936 to order via phone call</h3>

                </div>
            </div>
        </div>
        <nav id="navbar" class="navbar  navbar-expand-sm  sticky-top" style="border-bottom: 1px solid #80808085;">
            <div class="container" style="height: 70px;">
                <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#Navbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                <a class="navbar-brand mr-auto" href="home" style="margin-left: 4%;margin-bottom: 3%;"><h1>GrosiKart</h1></a>
                <div class="collapse navbar-collapse" id="Navbar">
                   
                            <div class="container" style="margin-top: -3%;">
                                <div class="row" style="padding-bottom: 0;">
                                    <ul class="navbar-nav mr-auto col-md-12">
                                        <li class="nav-item col-md-8 " style="padding-left: 5%;">
                                    <div class=" search-box">
                                        <div class="search-container">
                                            <form class="form">
                                                <input type="text"  class="no-outline" placeholder="Search For Products" name="search" value="" autocomplete="off" id="myinput"
                                                onkeyup="searchFunction()" autofocus>
                                               <i class="fa fa-search fa-lg"></i>
                                              </form>
                                              
                                              <ul id="wrapper">
                                                    <!--    <%@ page isELIgnored="false" %>
                                                                     <%@  page import="java.sql.ResultSet" %>
                                                 
                                                                     <% // ResultSet rd=(ResultSet)request.getAttribute("rd"); %>
                                                                       <% /*
                                                                if(rd.next()){
                                                        
                                                                   rd.previous();
                                                                while(rd.next()){
                                                    
                                                               */ %>
                                                                  <li class="li" style="display: none;">
                                                                  <a href="#"></a>	
                                                                  </li>
                                                                      
                                                                      
                                                                  <% /*
                                                                }
                                                                }
                                                                 */ %>
                                                                  
                                                                  <li id="noli" class="li" style="display: none;">
                                                                  <a>No puja found </a>
                                                                  </li>
                                                                  -->
                                              
                                              </ul>
                                              
                                              
                                              
                                            </div>
                                    </div>
                                
                                
                            

                        </li>
                        
                        <li class="nav-item col-md-2" style="padding-left:5% ;"><a class="nav-link" href="cart.jsp"><span class="fa fa-shopping-bag fa-lg">
                        <strong id="cartitems" style="display: inline;">0</strong></span> CART</a></li>
                        
                        
                         
                            <%@ page isELIgnored="false" %>
                    <% HttpSession ses=request.getSession();
                    
                    if(ses.getAttribute("name")==null){
                    	
                    
                    %> 
                        
                        
                        <li class="nav-item col-md-2"><a class="nav-link" href="#"><span class="fa fa-user fa-lg"></span>
                            <button onclick="document.getElementById('id01').style.display='block',document.getElementById('navbar').style.display='none'" style="width:auto;">Login/Register</button>
                            </a></li>
                        
                        
                     	 <%
                   	
                    }
                    
                    else{
                    	%>
                    	<li class="nav-item col-md-2"> <div class="dropdown" style="margin-left:7%">
                    	  <button class="dropbtn"> <span class="fa fa-user fa-lg"></span> ${name }</button>
                    	  <div class="dropdown-content">
                                <a href="account" id="My Bookings">Profile</a>
                                <a href="orderConfirmation" id="My Account">Orders</a>
                                <form action="logout">
                               <a><button id="Logout" type="submit" style="border:none;  color: black;
  
  text-decoration: none;
  display: block;
  background: none;">Log out</button></a>
                                </form>
                              </div>
                              </div>
                              </li>
                              
                              
                              
                              
                              

	    
                    	 <%
                    	
                    }
                            
                            
                            %>
                           
                           
                           
                        </div>
                        
                        
    						<strong id="cartitems1" style="display: none;">0</strong>
                    </ul>
                </div>
                </div>
                
                </div>
            </div>
    
        </nav>
        <!-- Login form-->
        <div id="id01" class="modal">
  
            <form class="modal-content animate" action="login" method="post">
              <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none',document.getElementById('navbar').style.display=''" class="close" title="Close Modal">&times;</span>
                <img src="img_avatar2.png" style="width: 20%;" alt="Avatar" class="avatar">
              </div>
          
              <div class="Logincontainer">
                <label for="uname"><b>Phone Number</b></label>
                <input class="login-input" type="text" placeholder="Enter Phone Number" name="uname" required>
          
                <label for="psw"><b>Password</b></label>
                <input class="login-input"  type="password" placeholder="Enter Password" name="psw" required>
                  
                <button class="login-button" type="submit">Login</button>

                <label style="margin-top: 2%;">New to GrosiKart?<button type="button" onclick="document.getElementById('id02').style.display='block', document.getElementById('id01').style.display='none'">SignUp Here</button></label>
                
              </div>
          
              <div class="container" style="background-color:#f1f1f1; padding:1%;">
                <button type="button" onclick="document.getElementById('id01').style.display='none',document.getElementById('navbar').style.display=''" class="cancelbtn" style="color:white">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
              </div>
            </form>
          </div>
          <!--    Sign up -->

          <div id="id02" class="modal">
  
            <form class="modal-content animate" action="/action_page.php" method="post">
              <div class="imgcontainer">
                <span onclick="document.getElementById('id02').style.display='none', document.getElementById('navbar').style.display=''" class="close" title="Close Modal">&times;</span>
                <img src="img_avatar2.png" style="width: 20%;" alt="Avatar" class="avatar">
              </div>
          
              <div class="Logincontainer">
                <label for="uname"><b>Name</b></label>
                <input class="login-input" type="text" placeholder="Enter Name" name="uname" required>
                <label for="uname"><b>Phone Number</b></label>
                <input class="login-input" type="text" placeholder="Enter Phone Number" name="uname" required>
          
                <label for="psw"><b>Password</b></label>
                <input class="login-input"  type="password" placeholder="Enter Password" name="psw" required>
                  
                <button class="login-button" type="submit">Register</button>

                <label style="margin-top: 2%;">Already Registered?<button type="button" onclick="document.getElementById('id02').style.display='none',document.getElementById('id01').style.display='block'">LogIn</button></label>
                
              </div>
          
              <div class="container" style="background-color:#f1f1f1; padding:1%;">
                <button type="button" onclick="document.getElementById('id02').style.display='none',document.getElementById('navbar').style.display=''" class="cancelbtn" style="color:white">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
              </div>
            </form>
          </div>
           <script>
        
		var x=document.getElementById("cartitems");
		var resCart=document.getElementById("cartitems1");
		var value=localStorage.getItem("value");
		x.innerHTML=value;
		resCart.innerHTML=value;

        </script>