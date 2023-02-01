
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

<title>Insert title here</title>
</head>
<body class="" style="background: #E8ECEF; color: black">

	<nav class="navbar navbar-expand-lg  mt-1"
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
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

					<li class="nav-item"><a class="nav-link" href="#"
						style="color: rgb(255, 223, 223);">Contact</a></li>
					<li class="nav-item"><a class="nav-link "
						style="color: rgb(255, 223, 223);" href="#">About</a></li>

				</ul>
				<ul class="navbar-nav   mb-lg-0 ">
					<li class="nav-item">

						<button class="btn btn-grey">
							<a href="login" class="view text-light bg-secondary p-2 rounded">Login</a>
						</button>
					</li>
					<li class="nav-item">

						<button class="btn btn-grey">
							<a href="registration_form"
								class="view text-light bg-secondary p-2 rounded">Registration
								Now</a>
						</button>
					</li>
				</ul>
			</div>
		</div>

	</nav>
	<c:forEach items="${profile }" var="s">
		<div class="container mt-3">
			<div class="row">

				<div class="col-8">

					<div class="info">
						<div class="carbox border rounded mb-1 p-4"
							style="background: #b5cee2">

							<h3 class="fw-bold">Name:${s.pNo}</h3>
							<h4>Address: ${s.fullName}</h4>
							<h5 class="">Country: ${s.email}</h5>
							<button class="btn btn-primary">
								<a href="profile/${s.id }" class="view text-white">View
									Profile</a>
							</button>


						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<p style="color: red;">${msg}</p>

</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link href="resources/css/header.css" rel="stylesheet">

</head>
    <nav class="navbar navbar-expand-lg p-1 mt-1"  style=" background-color: rgb(70, 142, 168);">
         <div class="container-fluid p-3" >
          <a class="navbar-brand  logo" style="    color:   rgb(124, 20, 20);" href="#">ABC JOB PORTAL</a>
          <button style="background-color:white" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
              <li class="nav-item">
              </li>
              <li class="nav-item">
                <a class="nav-link" href="">Contact</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="#">About</a>
              </li>
              <li class="nav-item">
              </li>
            </ul>
            <form class="d-flex" action="userSearch" method="post" modelAttribute="bean">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-light" type="submit">Search<a></button>           
            </form>
         
          </div>
        </div>
      </nav>
      
</body>
</html> --%>