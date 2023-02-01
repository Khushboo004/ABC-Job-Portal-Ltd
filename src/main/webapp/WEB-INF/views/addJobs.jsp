<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABC Job Portal</title>

<link href="resources/css/bootstrap.css" rel="stylesheet">

</head>
<body>
	<%@ include file="../include/admin_header.jsp"%>

	<div class="row ">
		<div class="col-md-6 col-lg-6 offset-md-3">
			<div class="card my-5 shadow">
				<div class="card-body p-5">
					<div class="card">
						<div class="card-header">
							<h2 class="h4 mb-2 text-center">Add Job</h2>
						</div>
						<div class="card-body">
							<form class="text-center border border-light " action="addJ"
								method="post" enctype="multipart/form-data">

								<!-- Name -->
								<input type="text" name="name" id="name"
									class="form-control mb-4" placeholder="Job Name">


								<!-- Type -->
								<input type="text" name="type" id="type"
									class="form-control mb-4" placeholder="Job Type">

								<!-- Title -->
								<input type="text" name="title" id="title"
									class="form-control mb-4" placeholder="Job Title">
								<!-- salary -->
								<input type="text" name="salary" id="salary"
									class="form-control mb-4" placeholder="Job salary">
								<!-- Location -->
								<input type="text" name="location" id="location"
									class="form-control mb-4" placeholder="Job Location">
								<!-- Description -->
								<textarea class="form-control mb-4" id="description"
									name="description" class="w-75" placeholder="Jobs Description"></textarea>

								<div class="custom-file mb-4">
									<input type="file" name="file" class="custom-file-input"
										id="customFile"> <label class="custom-file-label"
										for="customFile">Job Image</label>
								</div>

								<!-- Sign in button -->
								<button class="btn btn-info btn-block" type="submit">add</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/footer.jsp"%></body>

</body>
</html>