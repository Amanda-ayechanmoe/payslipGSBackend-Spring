<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="//cdn.materialdesignicons.com/5.0.45/css/materialdesignicons.min.css">

<title>Admin Home</title>
</head>
<style>
h1 {
font-family: 'Rubik',sans-serif;
font-weight: bolder;
}
h1 span {
color:purple;
}
</style>
<body>
	<nav class="nav d-flex shadow-sm p-2">
		<h1>Payslip<span>GS</span></h1>
		<div class="d-flex col justify-content-end align-items-center">
		<button class="btn btn-outline-danger d-flex" onclick="window.location = 'index.jsp'">
		<i class="mdi mdi-logout"></i><span class="d-none d-sm-block">Logout</span></button></div>
	</nav>
		<div class="d-flex px-3 py-3 h5 text-muted">
	<div>${admin}</div>
	<div class="d-flex col justify-content-end">
	<button class="d-flex btn btn-success" id="cmd"
	onclick="window.location='userRegister'">
	<i class="mdi mdi-account-plus"></i>
	<span class="d-none d-sm-block">Add new employee</span></button>
	</div>
	</div>
	<div align="center">
		<div class="alert alert-success d-flex justify-content-center">${message}</div>
		
		<table class="table" border="1" padding="5">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Address</th>
				<th>Date of Birth</th>
				<th>Department</th>
				<th>Job Title</th>
				<th>Start Date</th>
				<th>Bank Account</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${listUser}" var="user">
				<tr>
					<td>${user.userId }</td>
					<td>${user.name}</td>
					<td>${user.address}</td>
					<td>${user.dateOfBirth }</td>
					<td>${user.department }</td>
					<td>${user.jobTitle }</td>
					<td>${user.startDate }</td>
					<td>${user.bankAccount }</td>
					<td><a href="issuePayslip?id=${user.userId}">Payslip</a>
					<a href="editUser?id=${user.userId }">Edit</a> 
					<a href="deleteUser?id=${user.userId}">Delete</a></td>
				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>