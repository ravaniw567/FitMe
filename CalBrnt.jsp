<%@page import="java.io.PrintWriter"%>
<%@page import="icsd.DBHandler"%>
<%@page import="java.util.LinkedList"%>
<%@page import="icsd.ExcGS" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calories Burnt</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<%
//HttpSession session=request.getSession(false);
//FoodGS objF=null;
String strExcId=request.getParameter("EID");
//System.out.println(strFoodId+" "+"rrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
LinkedList<ExcGS> lst=(LinkedList<ExcGS>)session.getAttribute("eid");
DBHandler objDB=new DBHandler();
objDB.retriveFood(strExcId);

%>

<table class="table table-bordered table-striped table-hover">
	<tr>
	<th>Sno.</th>
	<th>Excercise</th>
	<th>Calories Burnt</th>
	</tr>
	
	
	<%
	int sno=1;
	int ttlCalB=0; %>
	
	<%
	for(ExcGS objE:lst){
	%>
	<tr>
	<td><%=sno %></td>
	<td><%=objE.getStrExc() %></td>
	<td><%=objE.getIntCal() %></td>
	</tr>
	<%ttlCalB=ttlCalB+objE.getIntCal(); %>
	
	<%
	sno++;
	}
	
	
	%>
	
</table>
<tr><td><h3>Total Calories Consumed: <%=ttlCalB %></h3></td>
		
	
	<% 
	session.setAttribute("CalBrnt", ttlCalB) ;
	int strCon=(int)session.getAttribute("CalCon");
	%>
	</tr>
	<h3>You have Burnt <%=strCon %>
	<%
	if(strCon==0){
		//PrintWriter out=response.getWriter();
		out.println("First Consume some calories and then burn it out");
	}
	%></h3>
<a href="CalBurnt.jsp"><h3>Add More ?</h3></a>
	
</body>
</html>