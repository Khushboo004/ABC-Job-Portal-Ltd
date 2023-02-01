<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABC Job Portal</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQ<!DOCTYPE html">
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

			<table class="table table-secondary table-hover" border="1">
				<thead class="table-dark">
					<tr>
						<th scope="col">Company Name</th>
						<th scope="col">Job Type</th>
						<th scope="col">User Name</th>
						<th scope="col">User School Grade</th>
						<th scope="col">User College Grade</th>
						<th scope="col">User University Name</th>
						<th scope="col">User University Grade</th>
						<th scope="col">User Status</th>
						<th scope="col">Action</th>
<!-- 						<th scope="col">User College Grade</th>
						<th scope="col">User Versity Name</th>
						<th scope="col">User Versity Grade</th>
						<th scope="col">Action</th> -->
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${applyJob }" var="aj">
						<tr>
						<th scope="row">${aj.getJob().getName()}</th>
						<td>${aj.getJob().getType()}</td>
							<td>${aj.name}</td>
							<td>${aj.schoolGrade}</td>
							<td>${aj.collegeGrade}</td> 
							<td>${aj.versityName}</td>
							<td>${aj.versityGrade}</td>
							<td>${aj.status}</td>
							<td><a  class="m-2" href="deleteStatus/${aj.id_apply_job }"
								onclick="return confirm('Are You sure?')"><i
									class="fa-solid fa-trash-can text-danger"></i></a>
									 <a  class="m-2"	href="status/${aj.id_apply_job}"><i class="fa-solid fa-pen-to-square"></i></a>
								<%-- <button class="btn btn-outline-primary">
									<a  class="m-2" href="profile/${aj.id_apply_job }" class="view">View Profile</a>
								</button> --%></td>
							<td></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</body>
</html>

