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
<title>Issue Payslip</title>
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
	<div class="alert alert-success">${user.name}</div>
	<div align="center" class="d-flex justify-content-center">
		<form class="form-group" action="savePayslip" method="post" id="this_form">
			<table class="table table-borderless" border="0" cellpadding="5">
				<tr>
					<td>Issue Date:</td>
					<td><input class="form-control" type="Date" name="issueDate"  required /></td>
				</tr>
				<tr>
					<td>Basic Pay:</td>
					<td><input class="form-control" type="number" name="basicPay" id="basicPay" required/></td>
				</tr>
				<tr>
					<td>Over Time :</td>
					<td><input class="form-control" type="number" name="overTime" id="overTime" required /></td>
				</tr>
				<tr>
					<td>Bonus:</td>
					<td><input class="form-control" type="number" name="bonus" id="bonus" required /></td>
				</tr>
				<tr>
					<td>Gross Pay:</td>
					<td><input class="form-control" type="number" name="grossPay" id="grossPay"
						onfocus="calculateGrossPay()" required/></td>
				</tr>
				<tr>
					<td>Tax:</td>
					<td><input class="form-control" type="number" name="tax" id="tax" required /></td>
				</tr>
				<tr>
					<td>CPF:</td>
					<td><input class="form-control" type="number" name="cpf" id="cpf" required /></td>
				</tr>
				<tr>
					<td>NetPay:</td>
					<td><input class="form-control" type="number" name="netPay" id="netPay" onfocus="calculateNetPay()" required/></td>
				</tr>
			</table>
				<div class="d-flex justify-content-center">
					<button class="btn btn-success col mx-1" type="submit" value="save">Issue</button>
					<div class="btn btn-outline-success col mx-1" value="Clear" name="Clear"
						onclick="formClear()">Clear</div>
				</div>
		</form>
	</div>

	<script>
		var basicPay;
		var overTime;
		var bonus;
		var grossPay;
		var tax;
		var cpf;
		var netPay;

		function calculateGrossPay() {
			basicPay = document.getElementById("basicPay").value;
			overTime = document.getElementById("overTime").value;
			bonus = document.getElementById("bonus").value;
			grossPay = eval(basicPay) + eval(overTime) + eval(bonus);
			document.getElementById("grossPay").value = grossPay;
		}
		function calculateNetPay() {
			tax = document.getElementById("tax").value;
			cpf = document.getElementById("cpf").value;
			netPay= eval(grossPay) - eval(tax) - eval(cpf);
			document.getElementById("netPay").value = netPay;
		}
		function formClear() {
			let form = document.getElementById("this_form");
			form.reset();
		}
		function submitForm() {
			let form = document.getElementById("this_form");
			form.preventDefault();
			form.action = "savePayslip"
		}
	</script>
</body>
</html>
