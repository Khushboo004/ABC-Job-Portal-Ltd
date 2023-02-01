<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABC Job portal</title>

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


</head>
<body class="" style="background: #E8ECEF; color: black">
		<%@ include file="home-header.jsp"%>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Apply Jobs</h1>
			</div>

			<table class="table table-secondary table-hover" border="1">
				<thead class="table-dark">
					<tr>
						<th scope="col">Company Name</th>
						<th scope="col">Job Type</th>
						<th scope="col">Job Title</th>
						<th scope="col">Job Salary</th>
						<th scope="col">Company Location</th>
						<th scope="col">Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${applyJob }" var="aj">
						<tr>
						<td><h5 class="fw-bold">${aj.getJob().getName()}</h5></td>
						<td>${aj.getJob().getType()}</td>
		 					<td>${aj.getJob().getTitle()}</td>
							<td>${aj.getJob().getSalary()}</td>
							<td>${aj.getJob().getLocation()}</td>
							<td>${aj.status}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</body>
</html>

