<%@page import="icsd.DBHandler"%>
<%@page import="java.sql.SQLException"%>
<%@page import="oracle.jdbc.pool.OracleDataSource"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DBHandler</title>
</head>
<body>

			
	
	<%		
	
			////This is Service Method For inerting Into Database from New User
			DBHandler objDB= new DBHandler();
 		String strUnm, strPwd, strPno, strEmail, strAge, strWgt,strHgt, strGen, strsw, strSetWt;
	
		strUnm= request.getParameter("name");
				System.out.println("1"+" "+strUnm);
		strPwd= request.getParameter("pwd");
				System.out.println("2"+" "+strPwd);
		strPno= request.getParameter("pno");
				System.out.println("3"+" "+strPno);
		strEmail= request.getParameter("email");
				System.out.println("4"+" "+strEmail);
		strAge= request.getParameter("age");
				System.out.println("5"+" "+strAge);
		strWgt= request.getParameter("wgt");
				System.out.println("6"+" "+strWgt);
		strHgt= request.getParameter("hgt");
				System.out.println("7"+" "+strHgt);
		strGen= request.getParameter("gender");
				System.out.println("8"+" "+strGen);
		strSetWt=request.getParameter("setWt");
		//strsh=request.getParameter("txtSh");
		
		objDB.insertIntoClient(strUnm, strPwd, strPno, strEmail, strAge, strWgt, strHgt, strGen, strSetWt);
		System.out.println("Service Method");
		response.sendRedirect(request.getContextPath()+"/FrontPage.html");
		
	%>
	
	
	
</body>
</html>