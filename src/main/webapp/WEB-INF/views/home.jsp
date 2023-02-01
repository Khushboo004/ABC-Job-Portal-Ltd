<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<meta name="viewport" content="width=device-width, initial-scale=1">
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="resources/css/profile.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> --%>
<title>ABC Job Portal</title>

<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/thread.css">


</head>
<body style="background-color: white">
	<%@ include file="home-header.jsp"%>


	<div class="container">
		<div class="row pt-3 d-flex">
			<div class="col-lg-5  mb-2 ">
				<img style="width: 100%; height: 100%"
					src="resources/image/Screenshot 2022-07-07 163322.png" alt="">
			</div>
			<div class="col-lg-5 pt-5 ps-5">
				<div class=" text-center">
					<h1 class="h1">FIND JOB HERE</h1>
					<div class="search-container p-3">
						Search: <input type="text">
					</div>

				</div>
			</div>
		</div>
	</div>

	<div style="background: rgb(132, 182, 199); color: white;">
		<div class="container  ">
			<div class="row ">
				<c:forEach items="${jobs }" var="job">


					<div class="col-lg-5 col-sm-9 p-1 pt-4m-2 mx-3">
						<div class="row  my-4   p-3 my-job arrow ">

							<div class="col-lg-10 ">
								<h2 class="fw-bolder">Name:${job.name}</h2>

								<h5>Job Type: ${job.type}</h5>
								<h6>Job Title: ${job.title}</h6>
								<h5>Salary: ${job.salary}</h5>


							</div>
							<div class="col-1 ">
								<span><a href="jobDetails/${job.job_id }" class="view"><i
										class="fa-solid fa-chevron-right "></i></a></span>

							</div>
						</div>

					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="container my-3 ">
		<div class="row row-cols-1 mt-3 ">
			<c:forEach items="${thread }" var="thread">
				<div class="col">
					<div class="card d-flex p-3"
						style="height: 350px; background: #E8ECEF">
						<!--    <div class=" me-3"> -->
						<%--     <div class="logo me-3 ">
                                <a class="text-decoration-none"
                                    href="userprofile?name=${thread.getUser().getFullName()}&id=${thread.getUser().getId()}">
                                </a>
                            </div> --%>
						<%--  <div class="detail me-3">
                                <a class="text-decoration-none" href="${pageContext.request.contextPath}/userprofile">
                                    <span class="fs-4 fw-bold text-dark">${thread.getUser().getFullName()}</span></a>

                            </div> --%>
						<!--  </div> -->
						<div class="content">

							<a class="text-decoration-none"
								href="${pageContext.request.contextPath}/userprofile">
								<h3 class="fs-5 fw-bold text-dark"> ${thread.getUser().getFullName()}</h3>
							</a>

							<h5 class="text-secondary fs-5">Title: ${thread.getTitle()}</h5>
							<p class="text-dark fs-6">Content: ${thread.getContent()}</p>
							<!--                             <small class="text-muted">Tags: </small>
 -->
						</div>
						<div class="comments">
							<div class="heading">
								<h5>Comments</h5>
							</div>
							<form
								action="${pageContext.request.contextPath}/postComment/${user.id}/${thread.id_thread}"
								method="post"
								<%--  modelAttribute="threadComment" --%>
                                onsubmit="return checkValidation()">
								<input type="hidden" name="id" value="${thread.id_thread}">
								<input type="hidden" name="u_id" value="${user.id}">

								<div class="form-floating">
									<textarea name="comment" class="form-control" id="comment"
										required="required"></textarea>
									<label for="floatingTextarea">Comment</label>
								</div>
								<%--                                 <p style="color:red;">${err}</p>
 --%>
								<p class="error">Can't post blank comment</p>
								<button type="submit" class="btn btn-primary fw-bold mt-3">Send
									Comment</button>
							</form>
							<a
								href="${pageContext.request.contextPath}/allComments/${user.id}/${thread.id_thread}">See
								all comments</a>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>



	<main style="background-color: rgb(151, 211, 229); color: black;">

		<div class="service-section  p-5  ">
			<div class="title text-center mb-3">
				<h1 class="font-weight-bolder" style="color: black">Services</h1>
			</div>
			<div class="row text-left text-md-center">
				<div class="col-lg-3">

					<h3 class="text-uppercase " style="color: black; font-weight: 700">job1</h3>
					<p class="small ">Lorem ipsum, dolor sit amet consectetur
						adipisicing elit. Magnam, dolore, ipsam ratione aliquam neque
						explicabo quia corrupti sapiente ullam inventore dolores a tempore
						ab facilis. Nobis amet facere nisi doloremque incidunt iste
						suscipit dolore!</p>
				</div>
				<div class="col-lg-3">

					<h3 class="text-uppercase" style="color: black; font-weight: 700">job2</h3>
					<p class="small ">Lorem ipsum, dolor sit amet consectetur
						adipisicing elit. Magnam, dolore, ipsam ratione aliquam neque
						explicabo quia corrupti sapiente ullam inventore dolores a tempore
						ab facilis. Nobis amet facere nisi doloremque incidunt iste
						suscipit dolore!</p>
				</div>
				<div class="col-lg-3">

					<h3 class="text-uppercase" style="color: black; font-weight: 700">job3</h3>
					<p class="small ">Lorem ipsum, dolor sit amet consectetur
						adipisicing elit. Magnam, dolore, ipsam ratione aliquam neque
						explicabo quia corrupti sapiente ullam inventore dolores a tempore
						ab facilis. Nobis amet facere nisi doloremque incidunt iste
						suscipit dolore!</p>
				</div>
				<div class="col-lg-3">

					<h3 class="text-uppercase" style="color: black; font-weight: 700">job3</h3>
					<p class="small ">Lorem ipsum, dolor sit amet consectetur
						adipisicing elit. Magnam, dolore, ipsam ratione aliquam neque
						explicabo quia corrupti sapiente ullam inventore dolores a tempore
						ab facilis. Nobis amet facere nisi doloremque incidunt iste
						suscipit dolore!</p>
				</div>
			</div>
		</div>


	</main>

	<%@ include file="../include/footer.jsp"%></body>
<script src="resources/js/all-user-home.js"></script>