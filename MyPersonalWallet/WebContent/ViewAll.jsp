<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Transactions | My Personal Wallet V.1 </title>
<style type="text/css">

.all_t {
margin-left: 1.5in;
width:11in;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 8px;
border-top: solid 5px white; 
border-right: solid 5px white; 
border-left: solid 5px white; 
}

.table_all_t td, .table_all_t th {
width: 3cm;
color:#000000;
font-weight:550;
border-bottom: dashed 1px brown;
}

.table_all_t th {
border-bottom: solid 1px brown;
}

input {
	width: 2.1cm;
	background: gray;
	color: white;
	border:dashed 1px;
}

</style>
</head>
<body>
	<%@ page errorPage="Error.jsp" %>
	<% 	if(session.getAttribute("name")==null){
		response.sendRedirect("index.jsp"); }
	%>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
	<%@ include file="header.jsp" %>
	<br>
	<div class="all_t">
	<table cellspacing="6" cellpadding="3" class="table_all_t">
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver"); 
	 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
	 	String tableN =(String) session.getAttribute("name");
	 	String sql = "select * from "+tableN+"_account_personal"; 
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
	 	out.println("<tr> <th> Date </th><th> ID </th><th> Method </th><th> Dedit </th><th> Credit </th><th> Category </th><th> Creditor </th><th> Debtor </th> <th> Description </th> </tr");
		while(rs.next()) {
	 		out.println("<tr> <td>"+rs.getString(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getString(3)+"</td> <td>"+rs.getString(4)+"</td> <td>"+rs.getString(5)+"</td> <td>"+rs.getString(6)+"</td> <td>"+rs.getString(7)+"</td> <td>"+rs.getString(8)+"</td> <td>"+rs.getString(9)+"</td> <td> <form action=\"delete.jsp\" method=\"post\"> <input type=\"hidden\" value=\""+rs.getInt(2)+"\" name=\"id\"> <input type=\"Submit\" value=\"Delete\"> </form> </td></tr>");
		}
	 	out.println("</table>");
	} catch (Exception e) { 
		e.printStackTrace();
		response.sendRedirect("sqlError.jsp"); }
	%>
	
	</form>
	</table>
	</div>
</body>
</html>