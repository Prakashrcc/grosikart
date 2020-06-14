<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>
<style>
body{
	   
	    
}
	form input{
	border-radius: 10px;
    width: 80%;
    padding: 4%;
    margin-left: 6%;
    background: transparent;
    /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); */
    margin-top: 10%;
    /* width: 90%; */
    border: none;
    font-size: 20px;
    /* border-bottom: 1px solid #ec3636; */
    color: black;
    border: 1px solid #04458F;
	}
	form h2{
	margin:0;
	margin-top: -8%;
    margin-left: 4%;
	}
	form h4{
	    font-size: 13px;
    margin-left: 4%;
    /* margin: 0; */
    font-weight: bold;
    font-family:sans-serif;
    color: gray;
    padding-bottom: 5%;
    border-bottom: 1px solid;
    width: 90%;
	
	}
	.links{
	    text-decoration: none;
    margin-top: 15%;
    font-size: 17px;
    margin-bottom: 2%;
	}
	form{
	    margin-top: 1%;
	border-radius:10px;
		       width: 94%;
    display: grid;
    /* margin-left: 10%; */
  /*      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); */
    
    margin-left: 4%;
        margin-top: 2%;
    padding-top: 20%;
    padding-bottom: 10%;
    background: white;
   
	}
	.links a{
	color: blue;
    margin-left: 4%;
    font-family: sans-serif;
    text-decoration: none;
   
    
	}
	.no-outline:focus {
      outline:none;
      }
      form button{
      	background: #046103;
     color: white;
    border: none;
    font-size: 20px;
    padding: 2%;
    width: 90%;
    margin-left: 4%;
    border-radius: 5px;
    /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); */
    margin-top: 10%;
    border: 1px solid;
    
        font-size: 25px;
      }
      input:focus{
      border:1px solid blue;
      }
      ::placeholder {
  color: gray;
  opacity: 1; /* Firefox */
}
.mypng{
margin-top: 5%;
    width: 35%;
    margin-left: 33%;
}
.phone{
   
  display: flex;
    border: 1px solid black;
    border-radius: 5px;
    margin-top: 10%;
    width: 90%;
    margin-left: 5%;
    padding-top: 1%;
    padding-bottom: 1%;
}
#register-form{
display: none;
}
.icons{
width: 4%;
    padding: 5%;
    margin-right: 3%;
    border-right: 1px solid gray;
    padding-right: 5%;
}
  
</style>
</head>
<body style=" ">
 	
	 <a href="index.jsp"><img alt="pray" style=" margin-left:5%; margin-top:5%;   width: 8%;" src="assets/images/left-arrow1.png"></a>
	<div class="contents">
	<form id="login-form" action="login" style="padding-top: 13%; margin-top: -4%;">
	 <h2 class="h2" style="   margin-top: -8%;">SIGN IN</h2>
	 <h4 style="    margin: 0;
    margin-top: 2%;
    margin-left: 4%;
    margin-bottom: 5%;">Log in to your account</h4>
	 <img alt=""  class="mypng" src="assets/images/user21.png">
	 
	 <div class="phone">
	  <img class="icons" alt="pray" style="    " src="assets/images/call.png">
	 
	 <input class="no-outline" style="     margin: 0;
    border: none;  " type="text" name="phone" placeholder="Phone No" required>
	 </div>
	 
	
	 
	  
	 <div class="phone">
	  <img class="icons" alt="pray" style="    " src="assets/images/lock.png">
	 
		 <input type="password" class="no-outline"  style="     margin: 0;
    border: none;  "  placeholder="Password" name="password" required>
	 </div>
	 
	
	 <button type="submit"> Sign in</button>
	 <div class="links" style=" text-decoration:underline;   border-top: 1px solid gray;
    margin: 0;
    margin-top: 10%;
    width: 90%;
    margin-left: 5%;
    padding-top: 5%;">
		<a type="button" style="color: black; margin-left: 4%;"  onclick="func1();"  >Sign up</a>
		<a style="color: black;
    float: right;
    margin-right: 5%;" href="#">Forgot Password</a>
	</div>
	</form>
	
	
	
	<!-- register -->
	
		<form style="margin-top: -10%;" id="register-form" action="register">
	 <h2 style="    margin-top: -8%;">SIGN UP</h2>
	 <h4 style="    margin-left: 4%;
    margin-bottom: 5%;
    margin-top: 2%;">Create an account with the new phone number</h4>
<!-- 	 <img alt=""  class="mypng" src="assets/images/user21.png">    -->
	 
	  <div class="phone" style="margin: 0;
    margin-left: 4%;">
	  <img class="icons" alt="pray" style="    " src="assets/images/user-1.png">
	 
	 <input class="no-outline" style="     margin: 0;
    border: none;  " type="text" placeholder="Name" name="name" required>
	 </div>
	 
	 <div class="phone">
	  <img class="icons" alt="pray" style="    " src="assets/images/call.png">
	 
	 <input class="no-outline" style="     margin: 0;
    border: none;  " type="text" placeholder="Phone No" name="phone" required>
	 </div>
	 
	   <div class="phone">
	  <img class="icons" alt="pray" style="    " src="assets/images/email.png">
	 
		 <input type="email" class="no-outline"  style="     margin: 0;
    border: none;  "  placeholder="Email" name="email" required>
	 </div>
	 
	  
	 <div class="phone">
	  <img class="icons" alt="pray" style="    " src="assets/images/lock.png">
	 
		 <input type="password" class="no-outline"  style="     margin: 0;
    border: none;  "  placeholder="Password" name="password" required>
	 </div>
	 
	<p style="    margin: 0;
    margin-top: 7%;
    margin-left: 4%;
    color: gray;">By creating account you agree to our T&C</p>
	 <button type="submit" style="background: black; margin-top: 4%;"> REGISTER</button>
	 <div class="links" style="margin: 0;
    padding-top: 5%;
    width: 90%;
    margin-left: 5%;
    border-top: 1px solid gray;
    margin-top: 7%;">
		<a style="color: black; margin-left: 4%; font-weight: 100;     font-family: sans-serif; text-decoration: none;" onclick="func2();" href="#">Already a user? Log in</a>
		
	</div>
	</form>
	
	</div>

</body>

<script>
	function func1() {
		
	var x1=	document.getElementById("login-form");
	x1.style.display="none";
		var x2 = document.getElementById("register-form");
		x2.style.display="block";
		
	}
	function func2() {
		var x1=	document.getElementById("login-form");
		x1.style.display="block";
			var x2 = document.getElementById("register-form");
			x2.style.display="none";
		
	}

</script>
</html>