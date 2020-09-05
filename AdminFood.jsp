<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Food</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
body{
background-image:url("images/assorted-spices-on-brown-wooden-table-beside-red-and-white-1435895.jpg");
}
input{
font-size:24px;
margin:8px;
}
.btn{
font-size:22px;
margin:16px;
margin-left:20%;
border-width:2px;
border-color:black;
}

</style>

</head>
<body>

<form action="FoodUpdate.jsp">


<div style="margin-top:15%;font-size:50px;color:white;">
	<p><center>Update Table Food</center></p>
</div>
<div style="font-size:24px;margin-left:35%;">
<b>	Food Id:<input type="number" name="FoodId"  required/><br>
	Food:<input type="text" name="Food" /><br>
	Calories<input type="number" name="Cal" ><br>
</b></div>
<button class="button btn" type="submit" value="insert" class="fbtn1" name="btn">Insert</button>
<button class="button btn" type="submit" value="delete" class="fbtn2" name="btn">Delete</button>
<button class="button btn" type="submit" value="update" class="fbtn3" name="btn">Update</button>

</form>
</body>

</html>