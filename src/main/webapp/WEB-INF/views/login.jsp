<%@page isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="resources/image/abc.png" >
<title>Login Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style type="text/css">
.error {
    color:#ad1c1c;
}
</style>
</head>


<body class="" style="background: #E8ECEF; ">
<%@ include file="../include/header.jsp" %>
<div class="container my-5">
<div class="row " >
<div class="col-md-6 offset-md-3">
 <div class="card m-3 shadow">
<div class="card-body p-5">
<div class="text-center"><img alt="" src="resources/image/abc.png" style="width: 15%;height: 75px" class=" rounded-pill"></div>
<h1 class="fs-4 fw-bold mb-4 text-center">Login Form</h1>
<p style="color:red;">${msg}</p>
<p style="color:red;">${status}</p>

<%-- <div th:if="${param.change}" class="alert alert-success">
<p th:text="${param.change}"></p>
</div> --%>
<form action="loginform" method="post" id ="formValidation" >

    <div class="form-group">
    <label for="exampleInputEmail1" class="font-weight-bold">Email address</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email" required>
      </div>

<div class="form-group">
<label for="password">Password</label>
<input name="password" type="password" class="form-control" id="password" placeholder="Enter Your Password" required >

</div>
<div class="my-2"> <a href="forgot">Forgot Password?</a></div>
<div class="container text-center mb-3">
 <input type="submit" value=Login  onclick="submitData();"  class="btn btn-primary mt-2">
 </div>
 <div class="card-footer py-3 border-0">
  <div class="text-center">
  New User? Click To <a href="registration_form"> Registration Now</a> 
 </div>
 </div>
</form>
</div>
</div>
</div>
</div>
</div>

    <%@ include file="../include/footer.jsp" %>
 

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script type="text/javascript">
$("#formValidation").validate({
    rules:{
           email:{
            email:true,
            regex :/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/
        },
        password :{
            minlength:8
            },
    },
    messages:{
   
        email:{
            required:"Please Enter Your Email Address",
            regax: "Please Enter Valid Number"

        },password :{
            required :"Please Enter Your Password"
        }
	
           
        },
    submitHandler: function(form) {
      form.submit();
    },

   });


</script> 

    </body>
    </html>