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
<title>User Home</title>
</head>
<style>
h1 {
font-family: 'Rubik',sans-serif;
font-weight: bolder;
}
h1 span {
color:limegreen;
}
</style>
<body>
	<nav class="nav d-flex shadow-sm p-2">
		<h1>Payslip<span>GS</span></h1>
		<div class="d-flex col justify-content-end align-items-center">
		<button class="btn btn-outline-danger d-flex" onclick="window.location = 'index.jsp'">
		<i class="mdi mdi-logout"></i><span class="d-none d-sm-block">Logout</span></button></div>
	</nav>
	<div class="px-3 py-3 h5 text-muted">${user}</div>
	<div align="center">
		<table class="table" border="1" padding="5">
		
			<tr>
				<th>Issue Date</th>
				<th>Basic Pay</th>
				<th>Over Time</th>
				<th>Bonus</th>
				<th>Gross Pay</th>
				<th>Tax</th>
				<th>CPF</th>
				<th>Net Pay</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${payslipList}" var="payslip">
				<tr>
					<td>${payslip.issueDate}</td>
					<td>${payslip.basicPay}</td>
					<td>${payslip.overTime}</td>
					<td>${payslip.bonus}</td>
					<td>${payslip.grossPay}</td>
					<td>${payslip.tax}</td>
					<td>${payslip.cpf}</td>
					<td>${payslip.netPay}</td>
					<td><a href="userPayslipDetail?id=${payslip.payslipId}">Detail</a></td>
				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>