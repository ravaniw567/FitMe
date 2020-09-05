<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Water Tracking</title>
</head>
<style>


input[type=number]{
font-size: 30px;
text-align: center;
}
button{
height: 40px;
width: 7%;
font-size: 30px;
}
#water{
font-size: 30px;
}
</style>

<body>
<p style="font-size: 26px;">Hey!!</p><br>

<div id="water">
	<p><i><b><center>Tell us how much Water you have drank..</center></b></i></p>
</div>


<div><center>
	<button type="button" onClick="FunMinus()" >-</button>
	<input type="number" value="0" id="water" />
	<button type="button" onClick="FunPlus()">+</button><br><br>
</center></div>
	<button onClick="fun()" class="btn btn-lg" style="margin-left: 60%">Done </button><br>
	<p id="abc" style="font-size: 60px; color: blue; margin-left: 45%"><center></center></p>
	
	<script>
	var x=0;
	var y=document.getElementById("water");
	
	function FunMinus()
	{
		if(y.value<=0)y.value=0;
		x--;
		y.value=x;
		document.getElmentById("water")=x
	}
	function FunPlus()
	{
		x++;
		y.value=x;
		if(y.value>50)y.value=50;
	}
	
	function fun(){
		
		var x=document.getElementById("water").value;
		var y;
		if(x==0){
			y="Drink it up!"
		}
		else if(x==1){
			y="Bottom ups!"
		}
		else if(x==2){
			y="Keep it up!"
		}
		else if(x==3){
			y="Doing Well"
		}
		else if(x==4){
			y="Good Job!"
		}
		else if(x>=5){
			y="You Did it!"
		}
		document.getElementById("abc").innerHTML=y
	}
	
	
	</script>
	

</body>
</html>