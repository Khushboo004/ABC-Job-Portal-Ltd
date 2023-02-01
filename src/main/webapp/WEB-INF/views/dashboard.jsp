<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%--   <%@include file="./base.jsp" %> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="resources/css/profile.css" rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
</head>
<body class="" style="background: #E8ECEF; color: black">
	<%@ include file="../include/admin_header.jsp"%>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Job Portal</h1>
			</div>
			<div class="">
				<a href="register" class="btn btn-success ">Add User</a>
			</div>
			<div class="container my-3 text-center">
				<a href="find">Search</a>
			</div>


			<table class="table table-secondary table-hover" border="1">
				<thead class="table-dark">
					<tr>
						<th scope="col">S.No</th>
						<th scope="col">Full Name</th>
						<th scope="col">Email</th>
						<th scope="col">Password</th>
						<th scope="col">Phone Number</th>
						<th scope="col">Country</th>
						<th scope="col">Gender</th>
						<th scope="col">Address</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users }" var="u">
						<tr>
							<th scope="row">${u.id}</th>
							<td>${u.fullName}</td>
							<td>${u.email}</td>
							<td>${u.password}</td>
							<td>${u.pNo}</td>
							<td>${u.country}</td>
							<td>${u.gender}</td>
							<td>${u.address}</td>
							<td><a  class="m-2" href="delete/${u.id }"
								onclick="return confirm('Are You sure?')"><i
									class="fa-solid fa-trash-can text-danger"></i></a>
									 <a  class="m-2"	href="update/${u.id }"><i class="fa-solid fa-pen-to-square"></i></a>
								<button class="btn btn-outline-primary">
									<a  class="m-2" href="profile/${u.id }" class="view">View Profile</a>
								</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</body>
</html>

