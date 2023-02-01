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
						<h1 class="fs-4  fw-bold mb-4 text-center">Edit Your Profile</h1>
						<%-- <form action="${pageContext.request.contextPath }/handleform" method="post"  id="formValidation"> --%>
						<form action="${pageContext.request.contextPath }/updatePro" method="post"  id="formValidation">
							
							<div class="form-group ">
								<label for="fullName"> Full Name</label> <input name="fullName"
									type="text" class="form-control" id="fullName"
									placeholder="Enter Full Name" value="${user.fullName }"
									required>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="font-weight-bold">Email
									address</label> <input type="email" class="form-control" name="email"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email" value="${user.email }" required>
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input name="password"
									type="text" class="form-control" id="password"
									placeholder="Enter Password" value="${user.password }" required>
							</div>

							<div class="form-group">
								<label for="pNo">Phone Number:</label> <input name="pNo"
									type="number" class="form-control" id="pNo"
									placeholder="Phone Number" value="${user.pNo }" required>
							</div>


							<div class="form-group">
								<label for="country">Country</label> <select name="country"
									class="form-control" id="country" required>
									<option>${user.country }</option>
									<option>Bangladesh</option>
									<option>Brazil</option>
									<option>India</option>
									<option>France</option>
									<option>Germany</option>
									<option>Turkey</option>
									<option>United States of America</option>
								</select>
							</div>


							<div class="form-group">
								<span class="mr-3"> Gender: </span> ${user.gender }
								<div class="form-check form-check-inline">
									<input name="gender" type="radio" class="form-check-input"
										id="inlineRadio1" value="male"> <label for="name">
										Male</label>
								</div>

								<div class="form-check form-check-inline">
									<input name="gender" type="radio" class="form-check-input"
										id="inlineRadio1" value="female"> <label for="name">
										Female</label>
								</div>
							</div>

							<div class="form-group">
								<label for="address"> Address</label> <input name="address"
									type="text" class="form-control" id="address"
									placeholder="Enter Address" value="${user.address }" required>
							</div>
							<div class="container text-center">
								<input type="submit" value="Edit" onclick="submitData();"
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
