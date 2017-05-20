<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%
	Connection con;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
		String sql,userN;
		userN =(String) session.getAttribute("name");
		sql = "Drop Table "+userN+"_account_personal";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.executeUpdate();
		sql = "Drop View "+userN+"_weekB ,"+userN+"_monthB ,"+userN+"_yearB"; 
		ps = con.prepareStatement(sql);
		ps.executeUpdate();
		response.sendRedirect("index.jsp");
	}catch(Exception e) {
		e.printStackTrace();
		response.sendRedirect("sqlError.jsp");
	}
	%>
</body>
</html>