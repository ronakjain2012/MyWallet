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
	<%@ page import="java.io.*" %>
	<%
		int t_id =Integer.parseInt(request.getParameter("id"));
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
		String tableN = session.getAttribute("name")+"_account_personal";
		PreparedStatement ps= con.prepareStatement("Delete from "+tableN+" where t_id=?");
		ps.setInt(1,t_id);
		int a = ps.executeUpdate();
			if(a>0) {
			%>
			<script type="text/javascript">
				alert("Row Deleted !");
			</script>	
			<%
			response.sendRedirect("ViewAll.jsp");
			} } catch (Exception e) { 
				e.printStackTrace();
				response.sendRedirect("sqlError.jsp"); }
		
		%>
</body>
</html>