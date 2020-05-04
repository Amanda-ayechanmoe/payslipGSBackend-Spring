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
<link rel="stylesheet" href="//cdn.materialdesignicons.com/5.0.45/css/materialdesignicons.min.css">

<title>Payslip Detail</title>
</head>
<style>
h1 {
font-family: 'Rubik',sans-serif;
}
h1 span {
color:limegreen;
}
.btn-download {
border-bottom: 1px dotted limegreen;
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
	<div>View Payslip Details</div>
	<div class="d-flex col justify-content-end">
	<button class="d-flex btn text-success btn-download" id="cmd">
	<i class="mdi mdi-download"></i>
	<span class="d-none d-sm-block">Download</span></button>
	</div>
	</div>
	<div class="px-5 mx-5" id ="content" align="center">
		<table class="table table-hover" border="0" cellpadding="5">
			<tr>
				<td>Issue Date:</td>
				<td>${payslipInfo.issueDate}</td>
			</tr>
			<tr>
				<td>Name:</td>
				<td>${userInfo.name}</td>
			</tr>
			<tr>
				<td>Address:</td>
				<td>${userInfo.address}</td>
			</tr>
			<tr>
				<td>Department:</td>
				<td>${userInfo.department}</td>
			</tr>
			<tr>
				<td>Job Title:</td>
				<td>${userInfo.jobTitle}</td>
			</tr>

			<tr>
				<td>Start Date:</td>
				<td>${userInfo.startDate}</td>
			</tr>
			<tr>
				<td>Bank Account:</td>
				<td>${userInfo.bankAccount}</td>
			</tr>
			<tr>
				<td>Basic Pay:</td>
				<td>${payslipInfo.basicPay}</td>
			</tr>
			<tr>
				<td>Over Time:</td>
				<td>${payslipInfo.overTime}</td>
			</tr>
			<tr>
				<td>Bonus:</td>
				<td>${payslipInfo.bonus}</td>
			</tr>
			<tr>
				<td>Gross Pay:</td>
				<td>${payslipInfo.grossPay}</td>
			</tr>
			<tr>
				<td>Tax:</td>
				<td>${payslipInfo.tax}</td>
			</tr>
			<tr>
				<td>CPF:</td>
				<td>${payslipInfo.cpf}</td>
			</tr>
			<tr>
				<td>Net Pay:</td>
				<td>${payslipInfo.netPay}</td>
			</tr>
		</table>

	</div>
	<script>
	var doc = new jsPDF();
	var specialElementHandlers = {
	    '#editor': function (element, renderer) {
	        return true;
	    }
	};

	$('#cmd').click(function () {
	    doc.fromHTML($('#content').html(), 15, 15, {
	        'width': 170,
	            'elementHandlers': specialElementHandlers
	    });
	    doc.save('sample-file.pdf');
	});
	</script>
</body>
</html>