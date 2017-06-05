<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Periodic View | My Personal Wallet V.1</title>
<style type="text/css">
#info_d {
margin-left:1in;
}
#data_B {
margin-left:1in;
width:11in;
color:white;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 8px;
border-top: solid 5px white; 
border-right: solid 5px white; 
border-left: solid 5px white; 
}

#data_B td {
border-bottom:  solid 1px white;
color: black;
font-weight: 700;
}

input {
	border: 2px solid white; 
	height: 2em;
	border-radius: 5px; 
	width: 2in;
}
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	<% 	if(session.getAttribute("name")==null){
		response.sendRedirect("index.jsp"); }
	%>
	<div id="main_d">
		<div id="info_d">
			<form action="periodic_view" method="post">
				<table cellspacing="15" cellpadding="2" id="data_table">
				<tr> <th> Start Time </th> <th> End Time </th> </tr>
				<tr> <td> <input type="date" placeholder="YYYY-MM-DD" name="s_date" required> </td> <td> <input type="date" placeholder="YYYY-MM-DD" name="e_date" required> </td> <td> <input type="submit" value="Look !"> </td> </tr>
				</table>	
			</form>
		</div>
	</div>
</body>
</html>