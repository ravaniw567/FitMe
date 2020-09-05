<%@page import="icsd.DBHandler"%>
<%@page import="java.util.LinkedList"%>
<%@page import="icsd.FoodGS" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calories Consumed</title>
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
String strFoodId=request.getParameter("FID");
//System.out.println(strFoodId+" "+"rrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
LinkedList<FoodGS> lst=(LinkedList<FoodGS>)session.getAttribute("fid");
DBHandler objDB=new DBHandler();
objDB.retriveFood(strFoodId);

%>

<table class="table table-bordered table-striped table-hover">
	<tr>
	<th>Sno.</th>
	<th>Food</th>
	<th>Calories Consumed</th>
	</tr>
	
	
	<%
	int sno=1;
	int ttlCal=0; %>
	
	<%
	for(FoodGS objF:lst){
	%>
	<tr>
	<td><%=sno %></td>
	<td><%=objF.getStrFood() %></td>
	<td><%=objF.getIntCal() %></td>
	</tr>
	<%ttlCal=ttlCal+objF.getIntCal(); %>
	
	<%
	sno++;
	}
	
	
	%>
	
</table>

	<tr ><td><h3>Total Calories Consumed:<%=ttlCal %></h3></td>
		<%
		session.setAttribute("CalCon", ttlCal);
		String strBrnt=(String)session.getAttribute("CalBrnt");
		%>
	</tr>
	<h3>You have Burnt:<%=strBrnt%></h3>
<a href="CalConsumed.jsp"><h3>Add More Calories?</h3></a>
	
</body>
</html>