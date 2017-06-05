<%@page import="java.security.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accounts | My Personal Wallet V.1</title>
<style type="text/css">
#users_ {
margin-left: 1in;
margin-top: 10px;
font-weight: 700;
padding: 10px;
line-height: 35px;	
}
</style>
</head>
<body>
<%@page import="java.util.*"%>
	<%@ page errorPage="Error.jsp" %>
		<% 	if(session.getAttribute("name")==null){
		response.sendRedirect("index.jsp"); } %>
	<%@ include file="header.jsp" %>
	<div id="users_">
	<font color="red"> <%=session.getAttribute("name") %> <br>
		ID : <%=session.getId()%> <br>
		Last Accessed :	<% long a=session.getLastAccessedTime();
		Date date = new Date(a);
		%>  <%=date.toString() %> <br>
		Account Name : <%=session.getAttribute("name")+"_account_personal" %> <br>
		Creation Time : <% a= session.getCreationTime();
		date =new Date(a);
		%> <%=" "%> <br>
		<br> <br><br>
		<a href="deleteA.jsp" style=" font-weight: 700; text-decoration: none; color: red; font-size: 30px; ">Delete Wallet</a>
		
	</font>
	</div>
</body>
</html>