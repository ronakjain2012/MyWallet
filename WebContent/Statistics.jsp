<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Statistic View | My Personal Wallet V.1</title>
<style type="text/css">
.stats {
	margin-left: 2.5in; 
}

.Stat_data td {
font-size: 20px;
border-bottom: dotted 2px;
width:3in;
padding: 5px;
}

.td_style{
border: solid 1px black;
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
	<%@ page import="java.util.*" %>
	<%@ page import="java.io.*" %>
	<dir class="stats">
		<tt style="color : red;"> On Bases of Total income * </tt> 
		<table class="Stat_data">
			<tr> <th> </th> <th> Expenses </th> <th> Income </th> </tr>
			<% try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet","root","root");
				String categ1 ; 
				double total=0.00,total1=0.00,total2=0.00;
				double per=0.00,per_a=0.00;
				String tableN = session.getAttribute("name")+"_account_personal";
				//System.out.println(tableN);
				PreparedStatement ps0 = con.prepareStatement("select category from categ order by category");
				ResultSet rs0 = ps0.executeQuery();
				////System.out.println(ps0.toString());
				int i = 1;
				while(rs0.next()) {
						categ1 = rs0.getString("category");
						//System.out.println(categ1);
						PreparedStatement ps1 = con.prepareStatement("select sum(debit) As Total_income from "+tableN);
						ResultSet rs1 = ps1.executeQuery();
						if(rs1.next()){
							total = rs1.getInt(1);
							//System.out.println("total amm "+total);
						}
						
						PreparedStatement ps2 = con.prepareStatement("select sum(credit) As Total_C from "+tableN+" where category=?");
						ps2.setString(1,categ1);	
						ResultSet rs2 = ps2.executeQuery();
						
						if(rs2.next()) {
							total1= rs2.getInt(1);
							//System.out.println("total credit "+total1);
						}
						per = ((total1/total)*100);
						per = Double.parseDouble(new DecimalFormat("##.##").format(per));
						//System.out.println(per);
						
						PreparedStatement ps3 = con.prepareStatement("select sum(debit) As Total_D from "+tableN+" where category=?");
						ps3.setString(1,categ1);
						ResultSet rs3 = ps3.executeQuery();
						if(rs3.next()) {
							total2 = rs3.getInt(1);
							//System.out.println("total debit "+total2);
						}
						per_a = ((total2/total)*100);
						per_a = Double.parseDouble(new DecimalFormat("##.##").format(per_a));
						//System.out.println(per_a);
						out.println("<tr> <td class=\"td_style1\">"+i+". &nbsp"+categ1+"</td> <td class=\"td_style\">"+per+"%</td> <td class=\"td_style\">"+per_a+"%</td> </tr>");
						i++;
					} }catch(Exception e) { 
						e.printStackTrace();
						response.sendRedirect("sqlError.jsp");  };
				%>	
		</table>
	</dir>
</body>
</html>