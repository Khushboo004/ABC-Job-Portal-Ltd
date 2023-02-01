<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../include/base.jsp"%>


<link href="resources/css/bootstrap.css" rel="stylesheet">

</head>
<body>
	<%@ include file="home-header.jsp"%>
	<section>

	<div class="row ">
		<div class="col-md-6 col-lg-6 offset-md-3">
			<div class="card my-5 shadow">
				<div class="card-body p-5">
					<div class="card">
						<div class="card-header">
							<h2 class="h4 mb-2 text-center">Apply Job</h2>
							<p style="color:red;" class="text-center">${msg}</p>
							
						</div>
						<div class="card-body">
							<form class="text-center border border-light "
								action="${pageContext.request.contextPath}/applyJob/${user.id}/${job.job_id}"
								method="post" >

				 			<input type="hidden" name="id" id="id"
									class="form-control mb-4 disabled"
									value="${user.id }">
								<input type="hidden" name="jobId" id="jobId"
									class="form-control mb-4 disabled"
									value="${job.job_id }"   >
								<%-- <input type="text" name="name" id="name"
									class="form-control mb-4 disabled" disabled="${activeField}"
									value="${job.name }"> 
									<input type="text" name="type" id="type" class="form-control mb-4" disabled="${activeField}"
									value="${job.type }" placeholder="Job Type">  --%>
									
									<input	type="text" name="name" id="name"
									class="form-control mb-4" placeholder="Enter Name"> 
									
									 <input type="text" name="schoolName" id="schoolName" class="form-control mb-4"
									placeholder="Enter Your School Name">
									
									 <input type="text" name="schoolGrade" id="schoolGrade" class="form-control mb-4"
									placeholder="Enter Your School Grade"> 
									
									<input type="text" name="collegeName" id="collegeName" class="form-control mb-4"
									placeholder="Enter Your College Name">
									
									 <input type="text" name="collegeGrade" id="collegeGrade" class="form-control mb-4"
									placeholder="Enter Your College Grade">
									
									 <input type="text" name="versityName" id="versityName" class="form-control mb-4"
									placeholder="Enter Your University Name">
									
									 <input type="text" name="versityGrade" id="versityGrade" class="form-control mb-4"
									placeholder="Enter Your University Grade">
									
									 <select name="status" id="status" class="form-control mb-4" hidden >
									 <option class="text-primary" >status</option>
									<option class="text-primary" >sorry to say that you are not eligible</option>
									<option class="text-danger" >Waiting List</option>
									<option class="text success" >Approve</option>

								</select> 


								<!-- Sign in button -->
								<button class="btn btn-info btn-block" type="submit">Apply</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
<%-- 	<%@ include file="../include/footer.jsp"%></body>
 --%>
</body>
</html>