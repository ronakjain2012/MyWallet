<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
background: #ffec6f;
}
.singe_ledger {
height: 2cm;

}
input ,select {
margin:20px 1px 1px 2.5in;
color:white;
text-align:center;
background: gray;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px;
font-weight: bold; 
width: 2in;
height:25px;
}

#find {
	width: 5in;
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
	<div class="singe_ledger">
		<form action="LedgerView" method="get">
		<select name="ledger" id="find">
		<option value="unknown">--- Debtors ---</option>
		<%	 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
			String val = null; 
			PreparedStatement ps = con.prepareStatement("select party_name from paidby order by party_name");
			ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					val = rs.getString(1);
			%>
		<option value="<%=val%>"><%=val%></option>
		<%} %>
		<option value="unknown">--- Creditors ---</option>
		<%
		ps = con.prepareStatement("select party_name from paidto order by party_name");
		rs = ps.executeQuery();		
		while(rs.next()) {
			val = rs.getString(1);
		%>	
		<option value="<%=val%>"><%=val%></option>
		<%} %>
		<option value="unknown">--- Categories ---</option>
		<%
		ps = con.prepareStatement("select category from categ order by category");
		rs = ps.executeQuery();		
		while(rs.next()) {
			val = rs.getString(1);
		%>	
		<option value="<%=val%>"><%=val%></option>
		<%} }catch(Exception e) { 
			e.printStackTrace();
			response.sendRedirect("sqlError.jsp"); } %>
		</select> <input type="submit" value="Go"> 
		</form>
	</div>	
	<div id="empty_"> </div>
</body>
</html>