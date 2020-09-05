<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
	body{
	background-image: url("images/sliced-green-fruits-2171077.jpg");
	}
	.btn{
	width: 100%;
	font-size: 40px;
	background-color: white;
	padding: 16px;
	border: 2px solid black;
	margin: 8px;
	text-align:left;
	border-radius:8px;
	}
	.btn:hover{
	background-color:pink;
	}
	
.navbar{
font-size:26px;
}
.nav{
margin-right:30%;
}
	 .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  
</style>

</head>

<body>

<div style="font-size: 50px;">
	<p ><center>Welcome </center></p>
</div>


<button class="button btn" onclick="window.location='CalConsumed.jsp'">Calories Consumed</button>
<button class="button btn" onClick="window.location='Water.jsp'">Water Tracking</button>
<button class="button btn" onClick="window.location='CalBurnt.jsp'">Calories Burnt</button>
<button class="button btn" onClick="window.location='Sleep.jsp'">Sleep</button>


<nav class="navbar navbar-inverse navbar-fixed-bottom bg-dark">
	<div class="collapse navbar-collapse" id="myNavbar">
  
	 <div class="container-fluid">
	 <img src="images/favicon.ico">
      <a class="navbar-brand" >FitMe</a>
      <ul class="nav navbar-right">
      <li class="active">Home</li>
      <li><a href="MyProfile.jsp">MyProfile</li>
    </ul>
</div>
</div>
</nav>

</body>
</html>