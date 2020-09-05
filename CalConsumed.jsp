<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.LinkedList"%>
    <%@ page import="icsd.FoodGS" %>
    <%@ page import="icsd.DBHandler" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cal Consumed</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>


.navbar{
min-height:180px !important;
}



table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 150%;
}

td, th {
    border: 1px solid #050505;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: yellow;
}
</style>


</head>

<script>
$(document).ready(function(){
 $("#myInput").on("keyup", function() {
   var value = $(this).val().toLowerCase();
   $("#myTable tr").filter(function() {
     $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
   });
 });
});

</script>

<body>


<%
//String strFoodId,strFood,strCal;
//FoodGS obj;
//Object obj=session.getAttribute("obj")
DBHandler objDB=new DBHandler();
LinkedList<FoodGS> lst=objDB.getTblFood();
//obj=(FoodGS)obj;
//obj.disp();
//strFoodId=obj.getStrFoodID();
//strFood=obj.getStrFood();
//strCal=obj.getStrCalories();

%>

<div>
<center><form class="nav navbar-nav navbar-inverse navbar-expand-lg navbar-fixed-top justift-content:between" action="" width='1000px'>
<div class="form-group from-group-lg" >
<input id="myInput" type="text"  placeholder="search here">

<button type="submit" class="btn btn-outline-success btn-lg" id="myInput" >
<i class="glyphicon glyphicon-search"></i>
</button>

</div>
</form>
</center>
</div>


<div>
<center><h1>Pick the Quantity of Food</h1></center>

</div>
<div>
<table class="table table-hover table-responsive">
<form action="CalCan" method="post">
  <thead class="thead-dark">
    <tr>
    <th>FoodId</th>
      <th>Food</th>
      <th>Calories </th>
      <th>Add</th>
      <!-- <th>Add</th> -->
    </tr>
  </thead>
  <tbody id="myTable" >
  
  <%
  int sno=1;
  for(FoodGS objF:lst)
  {
  %>
  <tr>
  <%-- <td><%=obj.getStrFoodId() %></td>
 --%>    
    <td><%=sno %></td>
    <td><%=objF.getStrFood() %></td>
       <td><%=objF.getIntCal() %></td>
       <%String strFoodId= objF.getStrFoodId(); 
       System.out.println(strFoodId);
       %>
     <td><button class="btn btn-info" id="btn"><a href="CalCon?foodid=<%=objF.getStrFoodId()%>">Add</a></button></td>
	<%System.out.println(objF.getStrFoodId()+" "+"Food Id"); %>
     </tr>
     <%

     sno++;
 		 }
     
    %>
 </form>
   
   
  </tbody>
  </table>


</body>
</html>