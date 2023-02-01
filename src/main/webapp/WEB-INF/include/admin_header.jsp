
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@include file="./base.jsp"%>
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
<link href="resources/css/header.css" rel="stylesheet">
<link rel="icon" type="image/png" href="resources/image/abc.png">
<title>Home</title>
</head>
<body class="" style="background: #E8ECEF; color: black">

	<nav class="navbar navbar-expand-lg mt-1"
		style="background-color: rgb(70, 142, 168);">
		<div class="container-fluid p-3">
			<div class="text-center px-3">
				<img alt="" src="resources/image/abc.png"
					style="width: 100%; height: 50px" class=" rounded-pill">
			</div>
			<a class="navbar-brand fw-bold logo pe-5"
				style="color: rgb(124, 20, 20); font-size: 1rem" href="#">ABC
				Job <br> Portal Ltd
			</a>
			<button style="background-color: white" class="navbar-toggler"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-lg-0 ">
									<li class="nav-item"><a class="nav-link " href="dashboard">Dashboard</a></li>
				
					<li class="nav-item"><a class="nav-link active"
						href="listJobs">List Jobs</a></li>
						
						<li class="nav-item"><a class="nav-link active"
						href="applyJobList">All Job Apply List</a></li>

				</ul>
				<ul class="navbar-nav  mb-1 mb-lg-0 ">
					<li class="nav-item">

						<button class="btn btn-grey">
							<a href="login" class="view text-light bg-secondary p-2 rounded">Logout</a>
						</button>
					</li>
					
					<li style="color: "><h6>${admin.fullName }</h6></li>
				</ul>
				
			</div>
		</div>
	</nav>

	<table class="table table-secondary table-hover d-flex ">
		<tbody>
			<c:forEach items="${profile }" var="s">
				<tr>
					<%--         <th scope="row">${s.id}</th> --%>
					<td>${s.pNo}</td>
					<td>${s.fullName}</td>
					<td>${s.email}</td>
					<td>
						<button class="btn btn-outline-primary">
							<a href="profile/${s.id }">View Profile</a>
						</button>
					</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<p style="color: red;">${msg}</p>

</body>
</html>