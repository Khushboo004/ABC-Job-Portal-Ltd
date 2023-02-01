<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="resources/css/profile.css" rel="stylesheet">

<title>Search Result</title>
</head>
<body class="" style="background: #E8ECEF">
	<%@ include file="../include/admin_header.jsp"%>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Job Portal</h1>
			</div>
			<h2>${msg }</h2>
			<div class="container my-3 text-center">
				<h1>Search Record</h1>
				<form:form action="search" method="post" modelAttribute="bean">
Enter Name :<form:input path="fullName" />
Enter Email :<form:input path="email" />
Enter Address :<form:input path="address" />
					<input type="submit" value="Search">
				</form:form>
			</div>

			<table class="table table-secondary table-hover">
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
					<c:forEach items="${data }" var="s">
						<tr>
							<th scope="row">${s.id}</th>
							<td>${s.pNo}</td>
							<td>${s.password}</td>
							<td>${s.address}</td>
							<td>${s.gender}</td>
							<td>${s.email}</td>
							<td>${s.country}</td>
							<td>${s.fullName}</td>
							
							

							
							
							
							<td>
								<button class="btn btn-outline-primary">
									<a href="profile/${s.id }" class="view">View Profile</a>
								</button>
							</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<div class="container text-center">
				<a href="register" class="btn btn-success ">Add User</a>
			</div>

		</div>
	</div>

</body>
</html>

