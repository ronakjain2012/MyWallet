<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Ledgers | My Personal Wallet V.1</title>
<style type="text/css">
body {
background:#ffec6f;
font-weight: bold;
}
input , select,textarea{
background:gray;
text-align:center;
font-size:12px;
color :white;
font-weight:bold;
width : 1.8in;
height : 2em;
border:solid 3px white;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px;
}

</style>
</head>
<body>
	<%@ page errorPage="Error.jsp" %>
		<% 	if(session.getAttribute("name")==null){
		response.sendRedirect("index.jsp"); }
	%>
	
	<%@ include file="header.jsp" %>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
	<div id="root">
		<div class="debtor"> <h3>Add Debtors</h3> 
		<form action="addLedger" method="post">
		<input type="hidden" value="debtor" name="whatIs">
		<table cellpadding="3" cellspacing="5">
		<tr> <th> Name </th> <th> Mobile Number	</th> <th> Email </th> <th> Country </th> <th> Address </th> </tr>
		<tr> <td> <input type="text" size="10" name="d_name" required> </td> <td> <input type="text" size="10" name="d_tel"> </td> <td> <input type="email" size="10" name="d_email"> </td>
		<td> <select name="d_country">
		<option value="undefined"> Not Selected </option> 
		<% try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
		String val = null; 
		PreparedStatement ps = con.prepareStatement("select * from countries");
		ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				val = rs.getString(2);
		%>
		<option value="<%=val%>"> <%=val%> </option>
		<%} } catch(Exception e) { 
			e.printStackTrace();
			response.sendRedirect("sqlError.jsp"); }  %>
		</select> </td> <td> <textarea rows="1" cols="25" name="d_address"></textarea> </td> 
		 <td> </td> <td> </td> <td> <input type="submit" value=" Add "> </td> </tr>
		</table>
		<hr/>
		</form>		
		</div>
		<div class="creditor"> <h3>Add Creditor</h3>
		<form action="addLedger" method="post">
		<input type="hidden" value="creditor" name="whatIs">
		<table cellpadding="3" cellspacing="5">
		<tr> <th> Name </th> <th> Mobile Number	</th> <th> Email </th> <th> Country </th> <th> Address </th> </tr>
		<tr> <td> <input type="text" size="10" name="d_name" required> </td> <td> <input type="text" name="d_tel"> </td> <td> <input type="email" size="10" name="d_email"> </td>
		<td> <select name="d_country">
		<option value="undefined"> Not Selected </option>
		<% try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
		String val = null; 
		PreparedStatement ps = con.prepareStatement("select * from countries");
		ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				val = rs.getString(2);
		%>
		<option value="<%=val%>"> <%=val%> </option>
		<%} } catch(Exception e) { 
			e.printStackTrace();
			response.sendRedirect("sqlError.jsp"); }  %>
		</select> </td> <td> <textarea rows="1" cols="25" name="d_address"></textarea> </td> 
		 <td> </td> <td> </td> <td> <input type="submit" value=" Add "> </td> </tr>
		</table>
		<hr/>
		</form>		
		</div>
		<div class="Categories"> <h3>Add Categories</h3>
		<form action="addLedger" method="POST">
		<table cellpadding="3" cellspacing="5">
		<input type="hidden" value="category" name="whatIs"/>
		<tr> <td> Name </td> <td> <input type="text" size="20" name="d_name" required> </td> <td></td> <td> <input type="submit" value="Add"> </td> </tr>
		</form>
		</table>
		<hr/>
		</div>
		<div class="addMaster"> <h3>Add to All (Master Ledger)</h3>
		<form action="addLedger" method="post">
		<input type="hidden" value="master" name="whatIs">
		<table cellpadding="3" cellspacing="5">
		<tr> <th> Name </th> <th> Mobile Number	</th> <th> Email </th> <th> Country </th> <th> Address </th> </tr>
		<tr> <td> <input type="text" size="10" name="d_name" required> </td> <td> <input type="text" size="10" name="d_tel"> </td> <td> <input type="email" size="10" name="d_email"> </td>
		<td> <select name="d_country">
		<option value="undefined"> Not Selected </option>
		<% try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
		String val = null; 
		PreparedStatement ps = con.prepareStatement("select * from countries");
		ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				val = rs.getString(2);
		%>
		<option value="<%=val%>"> <%=val%> </option>
		<%} } catch(Exception e) { 
			e.printStackTrace();
			response.sendRedirect("sqlError.jsp"); }  %>
		</select> </td> <td> <textarea rows="1" cols="25" name="d_address"></textarea> </td>
		 <td> </td> <td> <input type="submit" value=" Add "> </td> </tr>
		</table>
		<hr/>
		</form>
		</div>
	</div>
</body>
</html>