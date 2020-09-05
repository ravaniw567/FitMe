<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.LinkedList"%>
    <%@ page import="icsd.ExcGS" %>
    <%@ page import="icsd.DBHandler" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cal Burnt</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>


.navbar{
min-height=180px !important;
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
DBHandler objDB=new DBHandler();
LinkedList<ExcGS> lst=objDB.getTblExc();

%>

<div>
<center><form class="nav navbar-nav navbar-inverse navbar-expand-lg navbar-fixed-top justift-content:between" action="" width='1000px'>
<div class="form-group from-group-lg" >
<input id="myInput" type="text"  placeholder="search here">

<button type="submit" class="btn btn-outline-success btn-lg" id="myInput" width=40px>
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
  <thead class="thead-dark">
    <tr>
    <th>FoodId</th>
      <th>Food</th>
      <th>Calories Burnt per 30min</th>
      <th>Add</th>
      <!-- <th>Add</th> -->
    </tr>
  </thead>
  <tbody id="myTable" >
  <%
  int sno=1;
  for(ExcGS objE:lst)
  {
  %>
  <tr>
  <%-- <td><%=obj.getStrFoodId() %></td>
 --%>    
    <td><%=sno %></td>
    <td><%=objE.getStrExc() %></td>
       <td><%=objE.getIntCal() %></td>
     <td><button class="btn btn-info" id="btn" ><a href="CalBurnt?excid=<%=objE.getStrExcId()%>">Add</td>
     </tr>
     <%
     sno++;
    }
  %>
 
   
   
  </tbody>
  </table>


</body>
</html>