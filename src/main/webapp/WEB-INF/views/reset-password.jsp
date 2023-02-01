<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
.error {
	color: #ad1c1c;
}
</style>
</head>
<body class="" style="background: #E8ECEF">
	<%@ include file="../include/header.jsp"%>
	<div class="container my-5">
		<div class="row ">
			<div class="col-md-6 offset-md-3">
				<div class="card m-3 shadow">
					<div class="card-body p-5">
						<h1 class="fs-4 fw-bold mb-4 text-center">Reset Password</h1>
						<form action="${pageContext.request.contextPath }/resetPass"
							method="post" id="formValidation" modelAttribute="bean">


							<div class="form-group">
								<label for="email"> Email</label> <input name="email"
									type="text" class="form-control" id="email" value="${emailid}"
									placeholder="Enter Password" required>
							</div>

							<div class="form-group">
								<label for="password"> Password</label> <input name="password"
									type="password" class="form-control" id="password"
									placeholder="Enter Password" required>
							</div>
							<div class="form-group">
								<label for="cpassword">Confirm Password</label> <input
									name="cpassword" type="password" class="form-control"
									id="cpassword" placeholder="Enter Confirm  Password" required>
							</div>

							<div class="container text-center mb-3">
								<input type="submit" value="Reset Password" 
									onclick="submitData();" class="btn btn-primary mt-2">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
=	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
	<script type="text/javascript">

	      
		$("#formValidation").validate({
				rules:{
					password:{
						required : true,
						minlength : 8
					},
					cpassword : {
						required : true,
						minlength : 8,
						equalTo :  '[name="password"]
					},
				},
				messages : {

					password : {
						required : "Please Enter Password"

					},
					cpassword : {
						required : "Please Enter Confirm Password"
					}

				},
				submitHandler : function(form) {
					form.submit();
				},

			});
		
		
		 $(function () {
		        $("#btnSubmit").click(function () {
		            var password = $("#password").val();
		            var confirmPassword = $("#cpassword").val();
		            if (password != confirmPassword) {
		                alert("Passwords do not match.");
		                return false;
		            }
		            return true;
		        });
		    });
	</script>
</body>
</html>