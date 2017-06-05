<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home | My Personal Wallet V.1</title>

<style type="text/css">
.LinkPanel {
border: solid 0px;
float: right;
width: 500px;
text-align: center;}

.LinkPanel a {
text-decoration: none;
font-weight: bold;
color: white;
}

.information {
	border: solid 0px;
	float :left;
	width: 6.7in;
}

td {
border-bottom:solid 2pt;
border-right: solid 3pt;
}
.amt {
color: #4c4c4c;
text-align: right;
font-size: 18px;
font-weight: bold;
}

#income_button {
padding: 10px;
text-align:center;
margin : 10px;
background: #75d87a;
transition: all 1s ease;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px 0px 10px 0px;
box-shadow: 4px 4px 6px rgba(0,0,0,0.2);
}

#expense_button {
padding: 10px;
margin : 10px;
transition: all 1s ease;
background: #fb4545;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px 0px 10px 0px;
box-shadow: 4px 4px 6px rgba(0,0,0,0.2);
}

#lager_button {
padding: 10px;
margin : 10px;
background: #8d7407;
-moz-border-radius: 10px;
transition: all 1s ease; 
-webkit-border-radius: 10px; 
border-radius: 10px 0px 10px 0px;
box-shadow: 4px 4px 6px rgba(0,0,0,0.2);
}

#accounts_lager {
padding: 10px;
margin : 10px;
transition: all 1s ease;
background: #b03ff7;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px 0px 10px 0px;
box-shadow: 4px 4px 6px rgba(0,0,0,0.2);
}

#accounts_ {
padding: 10px;
margin : 10px;
transition: all 1s ease;
background: #6a3ff7;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px 0px 10px 0px;
box-shadow: 4px 4px 6px rgba(0,0,0,0.2);
}

#periodic_view {
padding: 10px;
margin : 10px;
background: #00ffa5;
transition: all 1s ease;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px 0px 10px 0px;
box-shadow: 4px 4px 6px rgba(0,0,0,0.2);
}

#statistics_button {
padding: 10px;
margin : 10px;
background: #c1f73f;
transition: all 1s ease;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px 0px 10px 0px;
box-shadow: 4px 4px 6px rgba(0,0,0,0.2);
}
#log_out {
padding: 10px;
margin : 10px;
background: #4aaafa;
width:1.8in;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px;
box-shadow: 4px 4px 6px rgba(0,0,0,0.3);
}
#calc { 
padding: 10px;
margin : 10px;
background: #aacafa;
width:2.5in;
-moz-border-radius: 10px; 
-webkit-border-radius: 10px; 
border-radius: 10px;
box-shadow: 4px 4px 6px rgba(0,0,0,0.3);
font-size: 20px;
letter-spacing: 3px;
font-weight: bold;
}

#income_button:HOVER ,#accounts_:HOVER ,#periodic_view:HOVER,#expense_button:HOVER , #lager_button:HOVER,#accounts_lager:HOVER,#statistics_button:HOVER{
	color: white;
	background: gray;
	font-weight: bold;
	letter-spacing: 2px;
	text-transform: uppercase;
}

.h4_ {
cursor:help;

}
</style>
<script type="text/javascript">

function mycalc() {
	window.open("calc.html","Calculator","resizable=1,width=350,height=200");
}

function open1() {
	window.open("Prints/current.jsp","Current View","resizable=1,width=950,height=650");	
}

function open2() {
	window.open("Prints/week.jsp","Week View","resizable=1,width=950,height=650");		
}

function open3() {
	window.open("Prints/weekIncome.jsp","WeekIncome View","resizable=1,width=950,height=650");		
}

function open4() {
	window.open("Prints/monthIncome.jsp","WeekIncome View","resizable=1,width=950,height=650");			
}

function open5() {
	window.open("Prints/yearIncome.jsp","WeekIncome View","resizable=1,width=950,height=650");			
}

function open6() {
	window.open("Prints/weekexp.jsp","WeekIncome View","resizable=1,width=950,height=650");			
}

function open7() {
	window.open("Prints/monthExp.jsp","WeekIncome View","resizable=1,width=950,height=650");			
}

function open8() {
	window.open("Prints/yearExp.jsp","WeekIncome View","resizable=1,width=950,height=650");			
}
</script>
</head>
<body>
	<%@ page errorPage="Error.jsp" %>  
	<% 	if(session.getAttribute("name")==null){
		response.sendRedirect("index.jsp"); }
	%>
	<%@ include file="header.jsp" %>
	<%@ page import="java.net.*" %>
	<div class="LinkPanel">
		<a href="transactions.jsp"> <div id="income_button"> Income </div> </a> 
		<a href="transactions1.jsp"><div id="expense_button">Expense</div></a>
		<a href="addLedger.jsp"><div id="lager_button">Add Ledger</div></a>
		<a href="ledgerView.jsp"><div id="accounts_lager">View by Ledger Accounts</div></a>
		<a href="ViewAll.jsp"><div id="accounts_">All Transactions </div></a>
		<a href="periodic_view.jsp"><div id="periodic_view">Periodic View </div></a>
		<a href="Statistics.jsp"><div id="statistics_button">Statistics View</div></a>
		<center><button id="calc"><font color="white" onclick=mycalc()> Calculotor </font></button>
		<a href="logout.jsp"><div id="log_out">Log Out</div></a></center>
	</div>
	<div class="information">
	<table cellspacing="3" cellpadding="1"> 
		<tr> <td onclick="open1()"> <h4 class="h4_"> Current Balance    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </h4> </td> <td class="amt"><%="  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "%> <% { int a =(Integer) (session.getAttribute("currentB")); if(a<0){ %> <font color="red"><%=a%></font> <%} else {%> <font color="green"><%=a%></font> <% } }%></td></tr>
		<tr> <td onclick="open2()"> <h4 class="h4_"> This Week Balance  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </h4> </td> <td class="amt"><%="  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "%> <% { int a =(Integer) (session.getAttribute("weekB")); if(a<0){ %> <font color="red"><%=a%></font> <%} else {%> <font color="green"><%=a%></font><% } }%></td> </tr>
		<tr> <td onclick="open3()"> <h4 class="h4_"> This Week Income   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </h4> </td> <td class="amt"><%="  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+session.getAttribute("Wincome") %> </td> </tr>
		<tr> <td onclick="open4()"> <h4 class="h4_"> This Month Income  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </h4> </td> <td class="amt"><%="  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+session.getAttribute("Imonth") %> </td></tr>
		<tr> <td onclick="open5()"> <h4 class="h4_"> This Year Income   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </h4> </td> <td class="amt"><%="  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+session.getAttribute("Yincome") %> </td> </tr>
		<tr> <td onclick="open6()"> <h4 class="h4_"> This week Expense  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </h4> </td> <td class="amt"><%="  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+session.getAttribute("Wexpense") %></td> </tr>
		<tr> <td onclick="open7()"> <h4 class="h4_"> This Month Expense &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </h4> </td> <td class="amt"><%="  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+session.getAttribute("Emonth") %> </td> </tr>
		<tr> <td onclick="open8()"> <h4 class="h4_"> This Year Expense  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </h4> </td> <td class="amt"><%="  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+session.getAttribute("Yexpense") %></td> </tr>
	</table>
	</div>	
</body>
</html>