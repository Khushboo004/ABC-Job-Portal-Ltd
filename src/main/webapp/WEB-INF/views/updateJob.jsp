<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../include/base.jsp"%>
</head>
<body class="" style="background: #773e3e">

	<div class="container mt-5">
		<div class="row ">
			<div class="col-md-6 offset-md-3">
				<div class="card m-3 shadow">
					<div class="card-body p-5">
						<h1 class="fs-4  fw-bold mb-4 text-center">Change User
							Details</h1>
						<%-- <form action="${pageContext.request.contextPath }/" method="post"  id="formValidation"> --%>
						<form action="${pageContext.request.contextPath }/updateJobs" method="post"  id="formValidation">
							<input name="id" type="text" value="${job.id }">
							<div class="form-group ">
								<label for="name"> Name</label>
								 <input type="text" name="name" id="name" class="form-control mb-4" value="${job.name }"
									required>
							</div>
							<div class="form-group">
								<label for="type" class="font-weight-bold">Type</label>
									 <input type="text" name="type" id="type" class="form-control mb-4" value="${job.type }" required>
							</div>

							<div class="form-group">
								<label for="title">Title</label>
								 <input type="text" name="title" id="title" class="form-control mb-4" value="${job.title }" required>
							</div>

							<div class="form-group">
								<label for="salary">Salary</label>
								 <input type="text" name="salary" id="salary" class="form-control mb-4" value="${job.salary }" required>
							</div>
							<div class="form-group">
								<label for="location">Location</label>
								 <input type="text" name="location" id="location" class="form-control mb-4" value="${job.location }" required>
							</div>
							


							<div class="form-group">
								<label for="description"> Description</label>
								 <textarea class="form-control mb-4" id="description" name="description" value="${job.description }" required>${job.description }</textarea>
							</div>
							<div class="container text-center">
								<input type="submit" value="Update" onclick="submitData();"
									class="btn btn-primary mt-2">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>





	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
	<script type="text/javascript">
		$("#formValidation")
				.validate(
						{
							rules : {
								fullName : {
									minlength : 2
								},
								email : {
									email : true,
									regex : /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/
								},
								password : {
									minlength : 8
								},
								pNo : {
									minlength : 11,
									maxlength : 14
								},
							},
							messages : {
								fullName : {
									required : "Please Enter Your First Name",
									minlength : "Name at least 2 chareacters"
								},
								email : {
									required : "Please Enter Your Email Address",
									regax : "Please Enter Valid Number"

								},
								password : {
									required : "Please Enter Password"
								},
								pNo : {
									required : "Please Enter Phone Number"
								},
								country : {
									required : "Please select your country"
								},
								address : {
									required : "Please Enter your Address"

								}

							},
							submitHandler : function(form) {
								form.submit();
							},

						});
	</script>

</body>
</html>
