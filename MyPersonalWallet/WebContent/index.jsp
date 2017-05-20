<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal Wallet V.1</title>
<style type="text/css">
body {
	background: #ffec6f;
}

.header_ {
	background: #32ec97;
	text-align: center;
	line-height: 1cm;
	height: 1cm;
	margin: 1px 1px 1px 1px;
	border-bottom: 2px solid #000000;
}

.login {
	background: transpernt #ffffff;
	width: 300px;
	position: absolute;
	/*width:22em;*/
	margin-top: -3em; /*set to a negative number 1/2 of your height*/
	margin-left: -10em; /* set to a negative number 1/2 of your width*/
	/*border: 2px solid #ccc;*/
	top: 50%;
	left: 50%;
}

.Cer1 {
	width: 500px;
	height: 500px;
	background: #9f7907;
	-moz-border-radius: 250px;
	-webkit-border-radius: 250px;
	border-radius: 250px;
	border: 3px solid #cbb100;
	position: absolute;
	top: 12%;
	left: 31%;
	box-shadow: 0px 0px 0px 15px rgba(0, 0, 0, 0.3), 0px 20px 15px 0px
		rgba(0, 0, 0, 0.6);
}

.Cer {
	width: 400px;
	height: 400px;
	background: #bd9b02;
	-moz-border-radius: 200px;
	-webkit-border-radius: 200px;
	border-radius: 200px;
	border: 3px solid #e8c55b;
	position: absolute;
	top: 20%;
	left: 35%;
	box-shadow: 8px 8px 9px rgba(0, 0, 0, 0.6);
	-webkit-animation: shadow 2s infinite;
}

.textField {
	background: gray;
	border: solid 3px white;
	height: 22px;
	color: white;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border-radius: 10px;
	font-weight: bold;
	box-shadow: 4px 4px 6px black;
	-webkit-animation: shadow 2s infinite;
}

.buttonS {
	background: gray;
	height: 1cm;
	width: 2cm;
	color: white;
	font-size: 20px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border-radius: 10px;
	box-shadow: 4px 4px 6px black;
	-webkit-animation: shadow 2s infinite;
}

.addnew {
	height: 30px;
	width: 21px;
	color: white;
	font-size: 20px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border-radius: 10px;
	-webkit-animation: shadow 2s infinite;
}

.table_text {
	color: white;
}
</style>
<link rel="stylesheet" type="text/css" href="Fonts/stylesheet.css">
</head>
<body style="font-family: junction_regularregular;">
	<center>
		<div class="main">
			<div class="header_">
				<h3>Manage Your Personal Wallet !</h3>
			</div>
			<div class="Cer1"></div>
			<div class="Cer"></div>

			<div class="login">
				<form action="login" method="POST">
					<table cellpadding="5">
						<tr>
							<td class="table_text">UserName</td>
							<td><input type="text" size="30" name="userName"
								class="textField one" required /></td>
						</tr>
						<tr>
							<td class="table_text">Password</td>
							<td><input type="password" size="25" name="userPassword"
								class="textField two" required /></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Login" class="buttonS">
								<input type="reset" value="Clear" class="buttonS"></td>
						</tr>
						<tr>
							<td></td>
							<td class="addnew"><a href="Adduser1.jsp"
								style="text-decoration: none; height: 30px; color: white; font-weight: 900;">Add
									Wallet</a>
						</tr>
					</table>
				</form>
			</div>

		</div>
	</center>	
</body>
</html>