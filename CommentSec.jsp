<%@page import="java.util.LinkedList"%>
<%@page import="icsd.DBHandler"%>
<%@page import="icsd.CommentsGS" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Comments Section</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 150%;
    text-align: center;
    border-width: 4px;
}

td, th {
    border: 1px solid #050505;
    text-align: center;
    padding: 8px;
    
}
</style>
</head>
<body>
<%
DBHandler objDB=new DBHandler();
LinkedList<CommentsGS> lst=objDB.getComments();
%>
<div style="font-size: 44px;">
	<p><center>Read the Comments</center></p>
</div>

<div>
<table class="table table-hover table-responsive">
  <thead class="thead-dark">
    <tr>
    <th>Sno.</th>
    <th>Name</th>
      <th>Email</th>
      <th>Comment </th>
      
    </tr>
  </thead>
  <tbody id="myTable" >
  <%
  int sno=1;
  for(CommentsGS objC:lst)
  {
  %>
  <tr>
  <%-- <td><%=obj.getStrFoodId() %></td>
 --%>    
    <td><%=sno %></td>
    <td><%=objC.getStrName() %></td>
       <td><%=objC.getStrEmail() %></td>
       <td><%=objC.getStrComments() %></td>
     </tr>
     <%
     sno++;
    }
  %>



</body>
</html>