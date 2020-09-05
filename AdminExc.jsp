<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Exercise</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
body{
background-image:url("images/adult-athlete-body-exercise-176782.jpg");
background-repeat: no-repeat;

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

<form action="ExcUpdate.jsp">


<div style="margin-top:5%;font-size:50px;">
	<p><center>Update Table Excersise</center></p>
</div>
<div style="font-size:24px;margin-left:35%;">
<b>	Exercise Id:<input type="number" name="ExcId"  required/><br>
	Exercise:<input type="text" name="Exc" /><br>
	Calories<input type="number" name="CalB" ><br>
</b></div>
<button class="button btn" type="submit" value="insert" class="fbtn1" name="btn">Insert</button>
<button class="button btn" type="submit" value="delete" class="fbtn2" name="btn">Delete</button>
<button class="button btn" type="submit" value="update" class="fbtn3" name="btn">Update</button>

</form>
</body>

</html>