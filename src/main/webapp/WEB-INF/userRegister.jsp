<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>User Register</title>
</head>
<style>
h1 {
font-family: 'Rubik',sans-serif;
font-weight: bolder;
}
h1 span {
color:purple;
}
table {
font-size: 18px;
}
table tr td:first-child {
font-weight:bold;
}
</style>
<body>
	<nav class="nav d-flex shadow-sm p-2">
		<h1>Payslip<span>GS</span></h1>
		<div class="d-flex col justify-content-end align-items-center">
		<button class="btn btn-outline-danger d-flex" onclick="window.location = 'index.jsp'">
		<i class="mdi mdi-logout"></i><span class="d-none d-sm-block">Logout</span></button></div>
	</nav>
	<div class="alert alert-success">${result}</div>
	<div align="center" class="d-flex justify-content-center">
		<form action="userRegister" method="post" class="form-group" id="this_form">
			<table class="table table-borderless" border="0" cellpadding="5">
				<tr>
					<td>Name:</td>
					<td><input class="form-control" type="text" name="name" required /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input class="form-control" type="text" name="address" required /></td>
				</tr>
				<tr>
					<td>Date of Birth:</td>
					<td><input class="form-control" type="date" required name="dateOfBirth" /></td>
				</tr>
				<tr>
					<td>Department:</td>
					<td><input class="form-control" type="text" name="department" required /></td>
				</tr>
				<tr>
					<td>Job Title:</td>
					<td><input class="form-control" type="text" name="jobTitle" required /></td>
				</tr>
				<tr>
					<td>Bank Account:</td>
					<td><input class="form-control" type="text" name="bankAccount" required /></td>
				</tr>
				<tr>
					<td>Start Date:</td>
					<td><input class="form-control" type="date" required name="startDate" /></td>
				</tr>
				<tr>
					<td>Username:</td>
					<td><input class="form-control" type="text" name="username" required /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input class="form-control" type="text" name="password" required /></td>
				</tr>
			</table>
				<div class="d-flex justify-content-center">
					<button class="btn btn-success col mx-1" type="submit" value="save">Submit</button>
										<div class="btn btn-outline-success col mx-1" value="Clear" name="Clear"
						onclick="formClear()">Clear</div>
				</div>
		</form>
	</div>
</body>
<script>
function formClear() {
	let form = document.getElementById("this_form");
	form.reset();
}
</script>
</html>