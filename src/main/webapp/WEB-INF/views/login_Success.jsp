    
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABC Job Portal</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    
</head>
<body>
	<%@ include file="home-header.jsp"%>

<div class="container my-5">
<div class="row p-5 m-5" >
<div class="col-md-12 col-lg-6 col-sm-12 offset-md-3">
 <div class="card my-5 shadow">
<div class="card-body text-center">
        <h1 class="text-success fw-bolder ">Welcome!!!</h1>
       <h3 class="text-info fw-bold">${user.fullName}</h3>
        <h1 class="text-dark fw-bold"> Login Successful </h1>
        Back to <a href ="homePage" style="text-decoration: none;" class=" fw-bold">Home page</a>
              
</div>
</div>
</div>
</div>
</div>



	<%@ include file="../include/footer.jsp"%>

</body>
</html>