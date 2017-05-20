<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Month Income | My Personal Wallet V.1</title>
<style type="text/css">
#prints td {
border: 1px dashed;
}
</style>
</head>
<body>
<%@ page import="java.sql.*" %>	
	<tt style="color: red;">Press <b> Ctrl+P </b> to print</tt>
	<table cellpadding="5" id="prints">
<%
	try {
		Class.forName("com.mysql.jdbc.Driver"); 
	 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
	 	String tableN =(String) session.getAttribute("name")+"_monthB";
	 	String sql = "select t_date,t_id, method, debit,category,paid_by,t_desc from "+tableN+" where debit>0"; 
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
	 	out.println("<tr> <th> Date </th><th> ID </th><th> Method </th><th> Dedit </th><th> Category </th><th> Debtor </th> <th> Description </th> </tr");
		while(rs.next()) {
	 		out.println("<tr> <td>"+rs.getString(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getString(3)+"</td> <td>"+rs.getString(4)+"</td> <td>"+rs.getString(5)+"</td> <td>"+rs.getString(6)+"</td> <td>"+rs.getString(7)+"</td></tr>");
		}
	 	out.println("</table>");
	} catch (Exception e) {
		e.printStackTrace();
		response.sendRedirect("../sqlError.jsp"); }
	%>
	</table>
</body>
</html>