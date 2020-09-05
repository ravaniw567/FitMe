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
			
		String strExcId, strExc, strCalB;
		strExcId=request.getParameter("ExcId");
				System.out.println("1"+" "+strExcId);
		strExc=request.getParameter("Exc");
				System.out.println("2"+" "+strExc);
		strCalB=request.getParameter("CalB");
				System.out.println("3"+" "+strCalB);
		objDb.InsertExc(strExcId, strExc, strCalB);
		response.sendRedirect(request.getContextPath()+"/AdminExc.jsp");
}
else if(subBtn.equals("delete"))
{
	String strExcId;
	strExcId=request.getParameter("ExcId");
	objDb.DeleteExc(strExcId);
	response.sendRedirect(request.getContextPath()+"/AdminExc.jsp");
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
	String strExcId, strExc, strCalB;
	strExcId=request.getParameter("ExcId");
	strExc=request.getParameter("Exc");
	strCalB=request.getParameter("CalB");
	objDb.UpdateExc(strExcId, strExc, strCalB);
	System.out.println("Excercise Updated");
	response.sendRedirect(request.getContextPath()+"/AdminExc.jsp");
}
	%>

</body>
</html>