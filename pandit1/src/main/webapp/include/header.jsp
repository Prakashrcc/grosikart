 <div class="container header" style="display: ;">
            <div class="row problem-row" style="padding-bottom: 0;">
                <div class="col-12 upper-header">
                   <h3 style="color: white; float: right; font-size: 15px; font-weight: 200;margin-top: 1%; margin-right: 2%;">Call us at 7980797936 to order via phone call</h3>

                </div>
            </div>
        </div>
        <nav id="navbar" class="navbar header2 navbar-expand-sm  sticky-top" style="border-bottom: 1px solid #80808085;">
            <div class="container" style="height: 70px;">
                <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#Navbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                <a class="navbar-brand mr-auto" href="home" style="margin-left: 4%;margin-bottom: 3%;"><h1>GroSwift</h1></a>
                <div class="collapse navbar-collapse" id="Navbar">
                   
                            <div class="container" style="margin-top: -3%;">
                                <div class="row" style="padding-bottom: 0;">
                                    <ul class="navbar-nav mr-auto col-md-12"> 
                                        <li class="nav-item col-md-8 " style="padding-left: 5%;"><div class="dropdown" style="margin:0;
                                      display:block;">
                                    <div class=" search-box">
                                        <div class="search-container">
                                            <div class="form search-bar">
                                                <input type="text" style="border: none;"  class="no-outline" placeholder="Search For Products" name="search" value="" autocomplete="off" id="myinput"
                                                onkeyup="searchFunction()" autofocus>
                                               <i class="fa fa-search fa-lg"></i>
                                              </div>
                                              
                    	  
                    	  						<div class="dropdown-content" style="    margin-left: 15%; width: 70%;">
                                              <ul id="wrapper" style="padding: 0;">
                                                        <%@ page isELIgnored="false" %>
                                                                     <%@  page import="java.sql.ResultSet" %>
                                                                      <%@  page import="java.sql.*" %>
                                                 
                                                                     
                                                                       <% 
                                                                       
                                                                    	/*      String url="jdbc:mysql://localhost:3306/grosikart";
                                                                   	String uname="root";
                                                                   	String pass="Prakash1";
                                                                    */
                                                                       String url="jdbc:mysql://groswiftdatabase.cw9lueg1gi5v.us-east-2.rds.amazonaws.com:3306/grosikart";
                                                                   	String uname="admin";
                                                                   	String pass="uchiha7686";
                                                                   	String query="select * from grosikart_products ";
                                                            		
                                                            		Class.forName("com.mysql.jdbc.Driver");
                                                            		Connection con=DriverManager.getConnection(url,uname,pass);
                                                            		PreparedStatement st=con.prepareStatement(query);
                                                            		
                                                            		
                                                            		
                                                            		ResultSet searchRd=st.executeQuery();
                                                                       
                                                                       
                                                                if(searchRd.next()){
                                                        
                                                                	searchRd.previous();
                                                                while(searchRd.next()){
                                                    
                                                               %>
                                                              
                    	  											
                             									  
                             			
                               										 
                            										  
                            
                                                                  <li class="li" style="display: none;">
                                                                  <form action="search" style="margin:0;margin-top: 2%;margin-bottom:2%;">
                                                                   <input type="text" style="display: none" name="product-id" value="<%=searchRd.getString(1) %>">
                                                                   <input type="text" style="display: none" name="product-name" value="<%=searchRd.getString(3) %> <%=searchRd.getString(4) %> ">
                                                                  <button href="#" type="submit" style="    background: none;color: black;">
                                                                  
                                                                  <img src="<%=searchRd.getString(9) %>" style="height: 40px;width:40px;">
                                                                     <%=searchRd.getString(3) %>  <%=searchRd.getString(4) %></button>	
                                                                  
                                                                 
                                                                  </form>
                                                                  </li>
                                                                      
                                                                      
                                                                  <% 
                                                                }
                                                                }
                                                                  %>
                                                                  
                                                                  <li id="noli" class="li" style="display: none;">
                                                                  <a style="color: black;">No items found </a>
                                                                  </li>
                                                                  
                                              
                                              </ul>
                                              
                                              </div>
                            										  </div>
                                              
                                            </div>
                                    </div>
                                
                                
                            

                        </li>
                            <%@ page isELIgnored="false" %>
                    <% HttpSession ses=request.getSession();
                    
                    if(ses.getAttribute("name")==null){
                    	
                    
                    %> 
                         <li class="nav-item col-md-2" style="padding-left:5% ;"><a class="nav-link" href="#">
                         <button onclick="document.getElementById('id01').style.display='block',document.getElementById('navbar').style.display='none'" style="width:auto;">
                         <span class="fa fa-shopping-bag fa-lg">
                        <strong id="cartitems" style="display: inline;">0</strong></span> CART</button></a></li>
                       
                        
                         	 <%
                   	
                    }
                    
                    else{
                    	%>
                    	 <li class="nav-item col-md-2" style="padding-left:5% ;"><a class="nav-link" href="cart.jsp"><span class="fa fa-shopping-bag fa-lg">
                        <strong id="cartitems" style="display: inline;">0</strong></span> CART</a></li>
                        
	    
                    	 <%
                    	
                    }
                            
                            
                            %>
                           
                        
                        
                        
                        
                        
                        <!-- cart -->
                         
                            <%@ page isELIgnored="false" %>
                    <%
                    
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
                                <a href="profile.jsp" id="My Bookings">Profile</a>
                                <a href="orders" id="My Account">Orders</a>
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
                <input class="login-input" type="tel" placeholder="Enter Phone Number" name="uname" required>
          
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
  
            <form class="modal-content animate" action="register" method="post" id="register-form" onsubmit="return register()" >
              <div class="imgcontainer">
                <span onclick="document.getElementById('id02').style.display='none', document.getElementById('navbar').style.display=''" class="close" title="Close Modal">&times;</span>
                <img src="img_avatar2.png" style="width: 20%;" alt="Avatar" class="avatar">
              </div>
          
              <div class="Logincontainer">
                <label for="name"><b>Name</b></label>
                <input class="login-input" type="text" placeholder="Enter Name" name="name" required>
                <label for="phone"><b>Phone Number</b></label>
                <input id="inputPhone" onkeyup="valid()" class="login-input" type="tel" placeholder="Enter Phone Number" name="phone" required>
                 <label id="invalidPhone" style="display:none ; color: red;font-size: 12px; "><b><span class="fa fa-close"></span> Enter a valid phone no</b></label>
                  <label id="validPhone" style="display:none ; color: green;font-size: 12px; "><b><span class="fa fa-check"></span> </b></label>
                
                 <label for="email"><b>Email</b></label>
                <input class="login-input" type="tel" placeholder="Enter email" name="email" required>
               
          
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
          
          <!-- search  -->
  <!--      <ul id="wrapper" >
          	<li class="li">
          		<a href="#">my</a>
          	</li>
          	<li class="li">
          		<a href="#">my</a>
          	</li>
          	<li class="li">
          		<a href="#">you</a>
          	</li>
          
          </ul>  --> 
          
          <!-- search  -->
          <!--  
          <div class="container fixed-top" id="phoneNav"  style="background: white;">
           <div class="row" style="padding-bottom: 2%;">
            <div class="col-2">
            
            	 <button class="openbtn" onclick="openNav()" style="background: none;color: black;
            	 "><span class="fa fa-bars"></span></button>
            </div>
            <div class="col-8">
            	<h3>Groswift</h3>
            </div>
            <div class="col-2" style="padding-top: 2%;">
            	 <button onclick="document.getElementById('id01').style.display='block',document.getElementById('navbar').style.display='none'" style="width:auto; padding-top: 1%;
            	 ">
                         <span class="fa fa-shopping-bag fa-lg" style="color: black;">
                        <strong id="cartitems" style="display: inline; color:black;">0</strong></span> </button>
            </div>
           </div>
           <div class="row" style="padding-bottom: 2%;">
           
           <div class="col-12">
           	<div class="form search-bar">
                                                <input type="text" style="border: none;"  class="no-outline" placeholder="Search For Products" name="search" value="" autocomplete="off" id="myinput1"
                                                onkeyup="searchFunction1()" autofocus>
                                               <i class="fa fa-search fa-lg"></i>
                                              </div>
           </div>
           </div>
          </div>
          
          
          <div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><span class="fa fa-close"></span></a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>
-->

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" style="width: 20%;" onclick="closeNav()">&times;</a>
  <img src="img_avatar2.png" style="width: 70px;
    border-radius: 50%;
    text-align: center;
    margin-left: 35%;">
    
      <%
                    
                    if(ses.getAttribute("name")==null){
                    	
                    
                    %> 
                        
                        
                        
                            <button 
                            
                            style="   
    text-align: center;
    margin-left: 27%;
    margin-top: 10%;
    padding: 4%;
    color: white;
    background: #0000ff52;"
                             onclick="document.getElementById('id01').style.display='block',document.getElementById('navbar').style.display='none',
                            	 document.getElementById('mySidenav').style.width = '0'
                                 " style="width:auto;">Login/Register</button>
                            
                        
                        
                     	 <%
                   	
                    }
                    
                    else{
                    	%>
    
    <h3 style="color: white;
    text-align: center;
    font-size: 20px;"><%=session.getAttribute("name") %></h3>
    <h6 style="color: white;
    text-align: center;"><%=session.getAttribute("phone") %></h6>
    
  <a href="profile.jsp" style="border-top: 1px solid white;">Profile</a>
  <a href="orders">Orders</a>
  <a href="logout">Log Out</a>
  <%
                    }
  %>
</div>
<div class="bbb" style="">
	<div class="container ">
		<div class="row myrow">
			<div class="col-2">
				<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
			</div>
			<div class="col-6" style="margin-top: 1%;">
				<h1 style="font-size: 28px;">GroSwift</h1>
			</div>
			<div class="col-2" style="    font-size: 20px;
    color: white;
    margin-top: 3%;">
				<span class="fa fa-search" id="search-span" style="color: white;" onclick="document.getElementById('search-row').style.display='block',document.getElementById('search-span').style.display='none'"></span>
			</div>
			<div class="col-2" style="font-size: 20px;
    margin-top: 2%;">
				<span class="fa fa-shopping-bag" id="cartitems1"> 0</span>
			</div>
		</div>
		<div class="row" id="search-row" style="padding: 0; display: none;">
		<div class="col-12" style="padding-bottom: 2%;">
			<div class="form search-bar" style="border: 1px solid white;">
                                                <input type="text" style="border: none;color:white;background:transparent;"  class="no-outline" placeholder="Search For Products" name="search" value="" autocomplete="off" id="myinput1"
                                                onkeyup="searchFunction1()" autofocus>
                                               <i class="fa fa-search fa-lg" style="color: white"></i>
                                              </div>
		</div>
		</div>
	</div>

</div>
<div class="dropdown1">
<div class="dropdown-content1" style="    margin-left: 15%; width: 70%;">
                                              <ul id="wrapper1" style="padding: 0;">
                                                        <%@ page isELIgnored="false" %>
                                                                     <%@  page import="java.sql.ResultSet" %>
                                                                      <%@  page import="java.sql.*" %>
                                                 
                                                                     
                                                                       <% 
                                                                       
                                                                      searchRd.beforeFirst();
                                                                       
                                                                       
                                                                if(searchRd.next()){
                                                        
                                                                	searchRd.previous();
                                                                while(searchRd.next()){
                                                    
                                                               %>
                                                              
                    	  											
                             									  
                             			
                               										 
                            										  
                            
                                                                  <li class="li" style="display: none;">
                                                                  <form action="search" style="margin:0;margin-top: 2%;margin-bottom:2%;">
                                                                   <input type="text" style="display: none" name="product-id" value="<%=searchRd.getString(1) %>">
                                                                   <input type="text" style="display: none" name="product-name" value="<%=searchRd.getString(3) %> <%=searchRd.getString(4) %> ">
                                                                  <button href="#" type="submit" style="    background: none;color: black;">
                                                                  
                                                                  <img src="<%=searchRd.getString(9) %>" style="height: 40px;width:40px;">
                                                                     <%=searchRd.getString(3) %>  <%=searchRd.getString(4) %></button>	
                                                                  
                                                                 
                                                                  </form>
                                                                  </li>
                                                                      
                                                                      
                                                                  <% 
                                                                }
                                                                }
                                                                  %>
                                                                  
                                                                  <li id="noli1" class="li" style="display: none;">
                                                                  <a style="color: black;">No items found </a>
                                                                  </li>
                                                                  
                                              
                                              </ul>
                                              
                                              </div>
                            										  
                                              
                                            </div>
                                    </div>
                                

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
          
          <script>

			function valid(){
				var val=document.getElementById("inputPhone").value;
				if(val.length ==10){
						document.getElementById("validPhone").style.display="block";
						document.getElementById("invalidPhone").style.display="none";
					}
				else{
					document.getElementById("invalidPhone").style.display="block";
					document.getElementById("validPhone").style.display="none";
					
					}

				}

			function register(){
				var val=document.getElementById("inputPhone").value;
				
				if(val.length ==10){
						
						return true;
					}
				else{
					
					return false;
					
					}
				}
          </script>
          
          
           <script>
        
		var x=document.getElementById("cartitems");
		var resCart=document.getElementById("cartitems1");
		var value=localStorage.getItem("value");
		x.innerHTML=value;
		resCart.innerHTML=value;

        </script>
        