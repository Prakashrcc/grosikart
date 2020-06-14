<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.bottom-container{
	height: 500px;
    position: absolute;
    top: 0;
    z-index: 9;
    margin-left: 10%;
    width: 90%;
    background: white;
    left: 0;
    margin-top: 30%;
    text-align: center;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);

}
.top-container{
	font-size: 30px;
    width: 100%;
    position: absolute;
    /* background-color: #2f619a; */
    color: white;
    text-align: center;
    height: 500px;
    padding: 50px;
    top: 0;
    left: 0;
    background-image: linear-gradient(to right, rgb(18, 81, 195), rgba(12, 31, 74, 0.17));

}
.container{
    position: relative;
    margin: 0;
    height: auto;
}

</style>
</head>
<body>

<div class="container">
	<div class="top-container">
		<div class="title">
			<h3>Sign in</h3>
		</div>
		<div class="description">
			<h6>Log in to your account</h6>
		</div>
	</div>
	<div class="bottom-container">
		<div class="bottom-content">
			<form action="login">
				<div class="each-content">
					<div class="img">
					</div>
					<div class="input">
					<input type="text" placeholder="Phone No">
					</div>
				</div>
				<div class="each-content">
					<div class="img">
					</div>
					<div class="input">
					<input type="password" placeholder="Password">
					</div>
				</div>
				<div class="each-content">
					<div class="forget">
					<a href="forget">Forgot password?</a>
					</div>
				</div>
				<div class="each-content">
					<div class="button">
					<button type="submit">SIGN IN</button>
					</div>
				
				</div>
			
			</form>
		</div>
	
	</div>

</div>

</body>
</html>