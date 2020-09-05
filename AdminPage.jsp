<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
	.btn{
	width: 60%;
	font-size: 36px;
	padding: 16px;
	background-color: white;;
	border-color: black;
	border-radius: 8px;
	margin: 16px;
	border-width: 4px;
	text-align: left;
	}
	.btn:hover{
	background-color: threedhighlight;
	}
	
	body{
	background-image: url("images/strawberry-smoothie-on-glass-jar-775032.jpg");
	background-size: 1200px 1900px;
	}
</style>

</head>
<body>
<div style="font-size: 44px;">
	<p><center>Welcome Admin</center></p>
</div>

<button class="button btn" onClick="window.location='AdminFood.jsp'">Update Food</button>
<button class="button btn" onClick="window.location='AdminExc.jsp'">Update Excercise</button>
<button class="button btn" onClick="window.location='CommentSec.jsp'">Read Comments</button>
<button class="button btn" onClick="window.location='Users.jsp'">View Users</button>

</body>
</html>