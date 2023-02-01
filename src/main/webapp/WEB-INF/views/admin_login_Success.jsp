<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABC Job Portal</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body class="" style="background: #773e3e">


	<div class="container my-5">

		<div class="container my-5">
			<div class="row mt-5">
				<div class="col-md-6 offset-md-3">
					<div class="card">
						<div class="card-body text-center mt-5">
							<h1>Welcome!!!</h1>
							<h3>${user.fullName}</h3>
							<h1>Login Successful</h1>
							Back to <a href="dashboard">Dashboard</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>