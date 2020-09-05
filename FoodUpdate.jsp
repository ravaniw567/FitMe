<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="icsd.DBHandler" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Food</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<%
String subBtn=request.getParameter("btn");

DBHandler objDb= new DBHandler();
if(subBtn.equals("insert"))
{
			
		String strFoodId, strFood, strCal;
		strFoodId=request.getParameter("FoodId");
				System.out.println("1"+" "+strFoodId);
		strFood=request.getParameter("Food");
				System.out.println("2"+" "+strFood);
		strCal=request.getParameter("Cal");
				System.out.println("3"+" "+strCal);
		objDb.InsertIntoFood(strFoodId, strFood, strCal);
		response.sendRedirect(request.getContextPath()+"/AdminFood.jsp");
}
else if(subBtn.equals("delete"))
{
	String strFoodId;
	strFoodId=request.getParameter("FoodId");
	objDb.DeleteFood(strFoodId);
	response.sendRedirect(request.getContextPath()+"/AdminFood.jsp");
}

/* else if(subBtn.equals("view"))
{
	LinkedList<FoodGS> lst= objDb.getTblFood();
	ServletContext context=getServletContext();
	context.setAttribute("lstnm", lst);
	System.out.println(lst);
	RequestDispatcher rd=request.getRequestDispatcher("/display.jsp");
	rd.forward(request, response);
} */

else
{
	String strFoodId, strFood, strCal;
	strFoodId=request.getParameter("FoodId");
	strFood=request.getParameter("Food");
	strCal=request.getParameter("Cal");
	objDb.UpdateFood(strFoodId, strFood, strCal);
	System.out.println("Food Updated");
	response.sendRedirect(request.getContextPath()+"/AdminFood.jsp");
}
	%>

</body>
</html>