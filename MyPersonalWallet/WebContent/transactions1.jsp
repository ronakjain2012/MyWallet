<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expense | My Personal Wallet V.1</title>
<style type="text/css">
#empty_div {
float: left;
width: 5in;
height:5in;
font-size: 1cm;
}
body {
background:#ffec6f ;
font-weight: bold;
}

input ,select {
color:white;
background: gray;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px;
font-weight: bold; 
width: 2in;
height:25px;
}

textarea {
background: gray;
color: white;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px;
}

</style>
<script type="text/javascript">

function mycalc() {
	window.open("calc.html","Calculator","resizable=1,width=350,height=200");
}

</script>

</head>

<body>
	<%@ page errorPage="Error.jsp" %>
		<% 	if(session.getAttribute("name")==null){
		response.sendRedirect("index.jsp"); }
	%>
	<div id="empty_div">  <br><br><br><br><br> Expense :(  </div>
	<div id="transaction">
	<form action="transaction" method="post">
	<%@ page import="java.sql.*"%>
	<%@ page import="java.io.*" %>
	<%@ include file="header.jsp" %>
	<%
	Connection con;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
	%>
	
	<table border="0" cellspacing="15" cellpadding="5.1">
		<tr> <td> Amount </td>  <td> <input type="text" size="20" Placeholder="Ammount (Number only)" name="T_ammount" maxlength="5" onkeypress="return isNumber(event)" required> &nbsp <font color="gray" onclick=mycalc()> Calculotor </font> </td> </tr>  
		<tr> <td> Date    </td>  <td> <input type="date" placeholder="YYYY-MM-DD" name="T_date" size="20" required> </td> </tr>
		<tr> <td> Method  </td>  <td> <select name="T_method" size="1">
		<option value="Cash">Cash</option>
		<option value="Other">Other</option>
		</select> </td> </tr>
		<tr> <td> Category </td> <td> <select name="T_category" size="1">
		<option value="uncategorized">-- Not Selected -- </option>
		<% 
		String val = null; 
		PreparedStatement ps = con.prepareStatement("select * from categ");
		ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				val = rs.getString(2);
		%>
		<option value="<%=val%>"> <%=val%> </option>
		<%} } catch(Exception e) { 
			e.printStackTrace();
			response.sendRedirect("sqlError.jsp"); }  %>
		</select> <a href="addLedger.jsp">Add Category</a> </td> </tr>
		<tr> <td> Paid to </td> <td> <select name="T_paidto">
		<% try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
		String val = null; 
		PreparedStatement ps = con.prepareStatement("select * from paidto");
		ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				val = rs.getString(2);
		%>
		<option value="<%=val%>"> <%=val%> </option>
		<%} } catch(Exception e) { 
			e.printStackTrace();
			response.sendRedirect("sqlError.jsp"); }  %>
		</select> <a href="addLedger.jsp">Add Creditor</a> </td> </tr>
		<tr> <td> Paid by </td> <td> <select name="T_paidby" value="unknown">  <option value="unknown"> unknown </option> 
		</select>  </td> </tr>
		<tr> <td> Description </td> <td><textarea rows="5" cols="59" placeholder="Narretion" name="T_desc"></textarea> </td> </tr>
		<tr> <td> &nbsp </td> <td> <input type="Submit" value="Save !"> </td> </tr>
	</table>
	<input type="hidden" value="expense" name="T_type">
	</form>
	</div>
</body>
</html>