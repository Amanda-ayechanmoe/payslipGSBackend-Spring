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
<title>Edit User</title>
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
</head>
<body>
<nav class="nav d-flex shadow-sm p-2">
		<h1>Payslip<span>GS</span></h1>
		<div class="d-flex col justify-content-end align-items-center">
		<button class="btn btn-outline-danger d-flex" onclick="window.location = 'index.jsp'">
		<i class="mdi mdi-logout"></i><span class="d-none d-sm-block">Logout</span></button></div>
	</nav>
	<div align="center" class="d-flex justify-content-center">
		<form  class="form-group" action="userUpdate" method="post" id="this_form">
			<table class="table table-borderless" border="0" cellpadding="5">

				<tr>
					<td>Id:</td>
					<td><input class="form-control" required type="hidden" value="${user.userId}" name="userId" />${user.userId}</td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><input class="form-control" required type="text" value="${user.name}" name="name"/></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input class="form-control" required type="text" value="${user.address}" name="address"/></td>
				</tr>
				<tr>
					<td>Date of Birth:</td>
					<td><input class="form-control" required type="date" value="${user.dateOfBirth}" name="dateOfBirth"/></td>
				</tr>
				<tr>
					<td>Department:</td>
					<td><input class="form-control" required type="text" value="${user.department}" name="department"/></td>
				</tr>
				<tr>
					<td>Job Title:</td>
					<td><input class="form-control" required  type="text" value="${user.jobTitle}" name="jobTitle"/></td>
				</tr>
				<tr>
					<td>Bank Account:</td>
					<td><input class="form-control" required type="text" value="${user.bankAccount}" name="bankAccount"/></td>
				</tr>
				<tr>
					<td>Start Date:</td>
					<td><input class="form-control" required type="date" value="${user.startDate}" name="startDate"/></td>
				</tr>
				<tr>
					<td><input class="form-control" required type="hidden" value="${user.username}" name="username" /></td>
				</tr>
				<tr>
					<td><input class="form-control" required type="hidden" value="${user.password}" name="password" /></td>
				</tr>
			</table>
							<div class="d-flex justify-content-center">
					<input class="btn btn-success col mx-1" required type="submit" value="Save" />
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