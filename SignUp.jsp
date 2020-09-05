<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
	body{
	background-image:url("images/berries-bowl-bowl-of-fruit-close-up-1145977.jpg");
	}
	.input{
	font-size:30px;

	}
</style>

</head>
<body>
<p><h1><center><b>Sign Up Here...</b></center></h1></p><br><br>

<form action="DBHandler.jsp">

<div style="font-size:24px;margin-left:60%"> 
	<p>Username:<input type="text" placeholder="Name" name="name"></p>
	<p>Password:<input type="password" placeholder="Password" name="pwd"></p>
	<p>Email:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="email" placeholder="Email" name="email"></p>
	<p>Phone no:<input type="number" placeholder="123456789" name="pno"></p>
	<p>Age:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="number" placeholder="Age" name="age"></p>
	<p>Weight:&nbsp&nbsp&nbsp&nbsp<input type="number" placeholder="Weight" name="wgt"></p>
	<p>Height:&nbsp&nbsp&nbsp&nbsp<input type="number" placeholder="Height" name="hgt"></p>
	<p>Gender:&nbsp&nbsp&nbsp<input type="text" placeholder="Gender" name="gender"></p>
	<p>Set Weight:&nbsp<input type="number" placeholder="Set Weight" name="setWt"></p><br>
	
	<button style="margin-left:30%;">Sign Up</button>
	</form>
	</div>

</body>
</html>