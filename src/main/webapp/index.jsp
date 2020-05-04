<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>PayslipGS</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="//cdn.materialdesignicons.com/5.0.45/css/materialdesignicons.min.css">
<style>
h1 {
font-family: sans-serif;
}
.logo {
height: 30vh;
color: gray;}
.landing-page{
height: 70vh;
}
.card {
cursor: pointer;
height:30vh;
color: white;
}
.admin-login div:hover {
background: linear-gradient(to top right, rgb(127, 50, 168),gray) !important;
}
.client-login div:hover {
background: linear-gradient(to top right, rgb(50, 168, 82),gray) !important;
}
.card i {
font-size: 70px;
}
.admin-login {
background: url('https://www.first-reit.com/images/abt_corp_info.png')
}
.admin-login div {
background: linear-gradient(to top right, rgb(127, 50, 168,0.8),gray) !important;
height: 100%;
}
.client-login {
background: url('https://www.affordablebackgroundchecks.com/blog/wp-content/uploads/2018/03/Job-Interview.jpg')
}
.client-login div {
background: linear-gradient(to top right, rgb(50, 168, 82,0.8),gray) !important;
height: 100%;
}
</style>
</head>
<body>
<div class="logo d-flex justify-content-center align-items-end">
<h1 class="font-weight-bold">Payslip<span style="color:purple;">GS</span></h1>
</div>
<div class="landing-page d-flex justify-content-center align-items-start">
<div class="col-md-6 p-5">
<aside class="admin-login h3 card" onclick="routeToAdmin()">
<div class="p-5">
Admin Login
<i class="mdi mdi-account-circle-outline"></i>
</div>
</aside>
</div>
<div class="col-md-6 p-5">
<aside class="client-login h3 card" onclick="routeToClient()">
<div class="p-5">
Employee Login
<i class="mdi mdi-account-key-outline"></i>
</div>
</aside>
</div>
</div>
</body>
<script>
function routeToAdmin(){
	window.location.href = "adminLogin";
}
function routeToClient(){
	window.location.href = "userLogin";
}
</script>
</html>
