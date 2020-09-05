<%@page import="icsd.DBHandler"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="icsd.ClientGS" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<style type="text/css">
	#prof{
	font-size: 30px;
	margin-left: 5%;
	margin-top: 5%;
	}
	.input{
	text-align: center;
	}
	#pwd{
	margin-left: 75%;
	font-size: 26px;
	}
	
	.navbar{
font-size:26px;
}
.nav{
margin-left:20%;
margin-bottom: 0%;
}
	 .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  margin-left: 15%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
  .btn{
  margin-left: 50%;
  border-color: black;
  background-color: silver;
  font-size: 20px;

  border-width: 4px;
  }
  
  body{
  background-image: url("images/cakes-chocolate-close-up-cupcakes-959079.jpg");
  background-size: cover;
  }
  
  
</style>

</head>
<body>

<%
ClientGS objC=null;
//HttpSession session1=request.getSession();
String strUnm=(String)session.getAttribute("unm");

//PrintWriter out=response.getWriter();
//out.println(strUnm);
DBHandler objDB=new DBHandler();

objC=objDB.RetriveByUnm(strUnm);


%>
<div style="font-size: 40px;">
	<p><center>Welcome <%=objC.getStrUnm() %></center></p>
</div>

<div id="prof">
	Age:       <input type="number" value="<%=objC.getStrAge() %>" readonly/><br><br>
	Height:    <input type="number" value="<%=objC.getStrHgt() %>" readonly/><br><br>
	Weight:    <input type="number" value="<%=objC.getStrWgt() %>" readonly/><br><br>
	set Weight:<input type="number" value="<%=objC.getStrSetWt() %>"><br><br>
</div>

<div id="pwd">
<div class="container">
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" value="pwd?">Change Password</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
              <form>
    	   	    	
    		Current Password: <input type="password" ><br><br>
    		New Password: <input type="password" name="pwd"><br>
    		
    		<button class="button btn" onSubmit="<%
    		String strPwd=request.getParameter("pwd");
    		objDB.ChangePwd(strUnm, strPwd);
    		System.out.println("Pwd   "+strUnm +" "+strPwd);
    		%>" name="pwd">Submit</button>
    
    	
    	</form>
    	        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
	
    






<nav class="navbar navbar-inverse navbar-fixed-bottom bg-dark">
	<div class="collapse navbar-collapse" id="myNavbar">
  
	 <div class="container-fluid">
	 <img src="images/favicon.ico">
      <a class="navbar-brand" >FitMe</a>
      <ul class="nav navbar-right">
      <li ><a href="MainPage.jsp">Home</li>
      <li class="active">MyProfile</li>
    </ul>
</div>
</div>
</nav>

</body>
</html>