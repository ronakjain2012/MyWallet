<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="Fonts/stylesheet.css"> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
<style type="text/css">
::-webkit-input-placeholder { 
    color:white;
}
:-moz-placeholder {
   color:white;
   opacity: 1;
}
::-moz-placeholder { 
   color:white;
   opacity:1;
}
:-ms-input-placeholder { 
   color:white;
}
#header_for_all {
background: #1fed4f;
text-align: right;
text-decoration: none;
color : #000000;
height: 2em;
border-left: 5px solid #9d5cff;
border-right :5px solid #9d5cff;;
border-top:5px solid #9d5cff;
border-bottom:2px solid black;
padding: 5px;
-moz-border-radius: 20px;
-webkit-border-radius: 20px;
border-radius: 30px 30px 0px 0px; 
-khtml-border-radius: 20px; 
font-weight: 700;
}
#header_for_all a {
text-decoration:none;
color:Black;
font-weight: bold;
}

body {
background: #ffec6f;
font-family: junction_regularregular;
}
</style>
<script type="text/javascript">
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
</script>
</head>
<body>
	<div id="header_for_all" class="header_for_all">
	<a href="home.jsp" class="header_links">&nbsp;Home&nbsp;</a>&#8629 <a href="accounts.jsp" class="header_links">&nbsp; Account&nbsp;</a>&#8629 
	<% out.print(session.getAttribute("name")); %> <a href="logout.jsp" class="header_links">&nbsp;(logout)&nbsp;</a>
	<tt> <%="|"+java.util.Calendar.getInstance().getTime()%>	</tt>
	</div>
</body>
</html>