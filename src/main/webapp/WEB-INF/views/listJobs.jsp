
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

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>

 <link href="resources/css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

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
<body class="" style="background: #E8ECEF">
	<%@ include file="../include/admin_header.jsp"%>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Job Portal</h1>
			</div>
			<div class="text-right">
					<a href="add" class="btn btn-success ">Add job</a>
<!-- 				</div>
			<div class="container my-3 text-center">
				<a href="find">Search</a>
			</div> -->

			<%-- <table class="table table-secondary table-hover" border="1">
				<thead class="table-dark">
					<tr>
						<th scope="col">image</th>
						<th scope="col">name</th>
						<th scope="col">description</th>
						<th scope="col">price</th>
						<th scope="col">delete product</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${jobs }" var="u">
						<tr>
							<th scope="row">
							<img alt="" src="*{'data:image/jpeg;base64,'+${u.image}}" style="width: 100px;height: 100px;"></th>
							<td>${u.name}</td>
							<td>${u.salary}</td>
							<td>${u.title}</td>
							<td>${u.type}</td>
							<td><a href="deletejob/${u.id }" onclick="return confirm('Are You sure?')"><i
									class="fa-solid fa-trash-can text-danger"></i></a> <a
								href="update/${u.id }"><i class="fa-solid fa-pen-to-square"></i></a>
								<button class="btn btn-outline-primary">
									<a href="profile/${u.id }" class="view">View Profile</a>
								</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table> --%>
			<div class="container mt-3 ">
				<div class="row arrow ">
					<c:forEach items="${jobs }" var="job">
						<div class="col-lg-5 m-2 ">
							<div class="row  my-4 p-3 border rounded my-color card ">

								<div class="col-9">
<%-- 
									<img alt="" src="*{'data:image/jpeg;base64,'+${job.image}}"
										style="width: 150px; height: 150px;"> --%>
									<h3 class="fw-bolder">Name:${job.name}</h3>

									<h5>Job Type: ${job.type}</h5>
									<h6>Job Title: ${job.title}</h6>
									<h5>Salary: ${job.salary}</h5>


									<button  type="button" class="btn btn-warning me-2 mt-2">
										<a href="deletejob/${job.job_id }" onclick="return confirm('Are You sure?')"><i class="fa-solid fa-trash-can text-danger"></i></a>
									</button>
									<button type="button" class="btn btn-light border  me-2 mt-2">
										<a href="updateJob/${job.job_id }"><i class="fa-solid fa-pen-to-square"></i></a>
									</button>
									<button type="button" class="btn btn-info  me-2 mt-2">
								<a href="jobDetails/${job.job_id }" class= "view">View Details</a>
								</button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				
			</div>
		</div>
		</div>
		</div>
	
</body>
</html>