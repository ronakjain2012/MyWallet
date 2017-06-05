<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="Fonts/stylesheet.css"> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User</title>

<style type="text/css">
{
font-family: junction_regularregular;
}

body {
background: #ffec6f;
font-family: junction_regularregular;
}

.user_add {
margin: 100px;
margin-left:520px;
font-family: junction_regularregular;
}


input {
	margin:10px;
	border-radius: 2px;
	height: 1.3cm;
	width:3.2in;
	background: gray;
	color: white;
	font-size: 25px;
	border: solid 5px white;
	box-shadow: 4px 4px 6px rgba(0,0,0,0.3);
	font-family: junction_regularregular;
	text-align: center;
}

input[type=submit] {
	width: 2.1in;
}
input[type=reset] {
	width: 1in;
}

::-webkit-input-placeholder { 
    color:white;
}

:-moz-placeholder {
   color:    #909;
   opacity:  1;
}
::-moz-placeholder { 
   color:    #909;
   opacity:  1;
}
:-ms-input-placeholder { 
   color:    #909;
}

</style>
</head>
<body>
	<div class="user_add">
		<form action="adduser" method="POST">
			<input type="text" placeholder="User Name" size="20" name="UserNameAdd"/> <br>
			<input type="Password" placeholder="User Password" size="20" name="UserPassAdd"/> <br>
			<input type="Password" placeholder="User Password" size="20" name="UserPassAdd1"/> <br>
			<input type="Submit" value="Create !" /> <input type="reset" value="Clear " /> 
		</form>		
	</div>
</body>
</html>