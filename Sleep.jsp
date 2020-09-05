<%@page import="icsd.DBHandler"%>
<%@page import="icsd.ClientGS" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sleep</title>

<style>
	input[type=number]{
	font-size: 24px;
	text-align: center;
	}
	button{
	font-size: 24px;
	}
	
	
	#fact{
	width: 50%;
	margin-left: 25%;
	font-size: 20px;
	padding: 16px;
	background-color: olive;
	margin-top: 10%;
	border-width: 2px;
	border-color:red;
	border-left-color: red;
	border-left-width: 4px;
	}
	
</style>

</head>
<body>
<% 
//String strUnm
ClientGS objC=null;
String strUnm=(String)session.getAttribute("unm");
DBHandler objDB=new DBHandler();
objC=objDB.RetriveByUnm(strUnm);
//String age=objC.getStrAge();
//String strAge=objC.getStrAge();
%>
<form oninput="x.value=parseInt(a.value)*(0.42)">


<p style="font-size: 26px;">Hey!!</p><br>

<div style="font-size:24px; "><center>
The quality of your sleep directly affects your mental and physical health and the quality of your waking life, 
including your productivity, emotional balance, brain and heart health, immune system, creativity, vitality,
 and even your weight.
 No other activity delivers so many benefits with so little effort!
 <br>
 So sleep more to be fit!
 
</center></div>



<br>
<br>

<div><center>
<!-- 	<button  type="button" id="minus" onClick="funMinus()">-</button> -->
<label><h2>How Many Hours do you Sleep: <input type="text" id="a" value="0"></h2></label>
<!-- 	<button type="button" id="plus" onClick="funPlus()">+</button> -->


<span style="font-size: 24px;">
<output type="number" name="x" for="a">Enter the hours.</output>  Calories Burnt During sleeping
</center>
</span>
</div>
</form>



<div  id="fact">

<div>
	<h1><center>
		Think six hours of sleep is enough?
	</center></h1>
</div>

<p>Think again. Researchers at the University of California, San Francisco, discovered that some people have a gene that 
	enables them to function well on six hours of sleep a night.
 This gene, however, is very rare, appearing in less than 3% of the population.
 For the other 97% of us, six hours does not come close to cutting it.</p>

</div>



</body>
</html>