<%@page import="icsd.DBHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Comments</title>
</head>
<body>
<%
String strName ,strEmail, strComm;
strName=request.getParameter("name");
strEmail=request.getParameter("email");
strComm=request.getParameter("query");

DBHandler objDB=new DBHandler();
objDB.insertComments(strName, strEmail, strComm);

%>
</body>
</html>