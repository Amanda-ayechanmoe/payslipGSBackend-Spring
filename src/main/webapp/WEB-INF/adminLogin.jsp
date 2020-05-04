<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet">
<title>Admin Login</title>
</head>
<style>
body {
background: url('https://www.first-reit.com/images/abt_corp_info.png');
}
.filter {
height: 100vh;
background: linear-gradient(to top right, rgb(127, 50, 168,0.9),gray) !important;
}

.card {
font-family: 'Rubik', sans-serif;
min-width: 300px !important;
background: white !important;
}
td {
font-size: 18px;
}
.form input {
margin-bottom: 10px;
min-width: 280px !important;
height: 50px;
padding: 5px 10px;
border-radius: 8px;
border-color: purple;
}
.form label {
font-size:18px;
z-index: 1;
}
.button {
margin-top:30px;
background-color: purple;
color: white;
font-weight: bold;
padding: 10px;
border-radius: 8px;
}
.button:hover {
background-color:indigo;
color: white;
}
.error-msg {
font-size:10px;
}
.subtitle {
font-size:14px;
color: darkgrey;
margin-left: 100px;
}
.divider {
height:1px;
background-color: lightgrey;
}
.link {
cursor: pointer;
color: purple;
border-bottom: 1px dotted purple;
}
.link:hover {
font-weight: bold;
}
h1 {
font-family: 'Rubik',sans-serif;
font-weight: bolder;
}
h1 span {
color:purple;
}
</style>
<body>
<div class="filter d-flex justify-content-center align-items-center">
	<div class="card p-3 d-flex flex-column justify-content-center align-items-center">
		<h1 class="my-3 font-weight-bold">Payslip<span style="color:purple;">GS</span>
		<br/><span class="subtitle">Admin Portal</span></h1>
		<form action="adminRequest" method="post" class="form d-flex flex-column">
  			<label>Username</label>
  			<input type="text" name="username" placeholder="Enter your username">
  			<label>Password</label>
  			<input type="password" name="password" placeholder="Enter your password">
  			<p class="error-msg font-weight-bold text-danger">${error}</p>
  			<button class="btn button" type="submit">
  			Login
  			</button>
  			<div class="divider my-3"></div>
  			<div class="d-flex justify-content-center">
  			For employees,&nbsp;<span class="link" onclick="routeToClient()">sign-in here</span></div>
		</form>
	</div>
	</div>
</body>
<script type="text/javascript">
function routeToClient(){
	window.location.href = "userLogin"
}</script>
</html>