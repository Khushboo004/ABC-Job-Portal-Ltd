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

	<div class="row ">
		<div class="col-md-6 col-lg-6 offset-md-3">
			<div class="card my-5 shadow">
				<div class="card-body p-5">
					<div class="card">
						<div class="card-header">
							<h2 class="h4 mb-2 text-center">Apply Job</h2>
							<p style="color:red;" class="text-center">${msg}</p>
							<p style="color:red;" class="text-center">${err}</p>
							
						</div>
						<div class="card-body">
							<form class="text-center border border-light "
								action="${pageContext.request.contextPath}/giveStatus"
								method="post" >

				 			<input type="number" name="id" id="id"
									class="form-control mb-4 disabled"
									value="${applyJob.getUser().getId() }">
								<input type="number" name="jobId" id="jobId"
									class="form-control mb-4 disabled"
									value="${applyJob.getJob().getJob_id()}"   >
								<%-- <input type="text" name="name" id="name"
									class="form-control mb-4 disabled" disabled="${activeField}"
									value="${job.name }"> 
									<input type="text" name="type" id="type" class="form-control mb-4" disabled="${activeField}"
									value="${job.type }" placeholder="Job Type">  --%>
									
									<input	type="text" name="name" id="name"
									class="form-control mb-4" value="${applyJob.name }"> 
									
									 <input type="text" name="schoolName" id="schoolName" class="form-control mb-4"
									value="${applyJob.schoolName }"> 
									
									 <input type="hidden" name="schoolGrade" id="schoolGrade" class="form-control mb-4"
									value="${applyJob.schoolGrade }"> 
									
									<input type="hidden" name="collegeName" id="collegeName" class="form-control mb-4"
									value="${applyJob.collegeName }"> 
									
									 <input type="hidden" name="collegeGrade" id="collegeGrade" class="form-control mb-4"
									value="${applyJob.collegeGrade }"> 
									
									 <input type="hidden" name="versityName" id="versityName" class="form-control mb-4"
									value="${applyJob.versityName }"> 
									
									 <input type="hidden" name="versityGrade" id="versityGrade" class="form-control mb-4"
									value="${applyJob.versityGrade }"> 
									 <label	for="status">Status</label> 
									 <select name="status" id="status" class="form-control mb-4"  >
									 <option class="text-primary">${applyJob.status }</option>
									<option class="text-primary">sorry to say that you are not eligible</option>
									<option class="text-danger">Waiting List</option>
									<option class="text success">Approve</option>
									

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
<%-- 	<%@ include file="../include/footer.jsp"%></body>
 --%>
</body>
</html>