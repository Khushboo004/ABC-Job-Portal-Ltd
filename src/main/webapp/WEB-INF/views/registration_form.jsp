<%@page isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    
 <!--   <link rel="stylesheet" href="style.css"> -->
<%--        <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet" > --%>
<%--     <script src = "<c:url value="/resources/js/script.js"/>" type="text/javascript"></script> --%>
<style type="text/css">
.error {
    color:#ad1c1c;
}
</style>
</head>

<body class="" style="background: #E8ECEF">
<%@ include file="../include/header.jsp" %>
<div class="container">
<div class="row " >
<div class="col-md-6 offset-md-3">
 <div class="card m-3 shadow">
<div class="card-body p-5">
<div class="text-center"><img alt="" src="resources/image/abc.png" style="width: 15%;height: 75px" class=" rounded-pill"></div>

<h1 class="fs-4  fw-bold mb-4 text-center">Registration Form</h1>

<p style="color:red;">${err}</p>

<form:form action="handleform" method="post"  id="formValidation">

    <div class="form-group">
    <label for="exampleInputEmail1" class="font-weight-bold">Email address</label>
   <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
    </div>


<div class="form-group ">
<label for="fullName" > Full Name</label>
<input name="fullName" type="text" class="form-control" id="fullName" placeholder="Enter Full Name" required >
</div>
<div class="form-group">
<label for="password">Password</label>
<input name="password" type="password" class="form-control" id="password" placeholder="Enter Password" required >
</div>

<div class="form-group">
<label for="pNo">Phone Number:</label>
<input name="pNo" type="number" class="form-control" id="pNo" placeholder="Phone Number" required>
</div>


<div class="form-group">
<label for="country">Country</label>
<select name="country"class="form-control" id="country" required >
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
<span class="mr-3" > Gender</span>
<div class="form-check form-check-inline" >
<input name="gender" type="radio" class="form-check-input" id="inlineRadio1" value="male">
<label for="name"> Male</label>
</div>

<div class="form-check form-check-inline">
<input name="gender" type="radio" class="form-check-input" id="inlineRadio1" value="female">
<label for="name"> Female</label>
</div>
</div>

<div class="form-group">
<label for="address"> Address</label>
<input name="address" type="text" class="form-control" id="address" placeholder="Enter Address" required>
</div>

       
<div class="container text-center mb-3">
 <input type="submit" value="Sign up"class="btn btn-primary mt-2">
</div>
</form:form>

 <div class="card-footer py-3 border-0 ">
  <div class="text-center">
   Already registered? Click To <a href ="goLogin">Login!!</a>
   </div>
</div>
</div>
</div>
</div>
</div>
</div>
  <%@ include file="../include/footer.jsp" %>



    <script type="text/javascript">
$("#formValidation").validate({
    rules:{
        fullName:{
            minlength: 2
        },
           email:{
            email:true,
            regex :/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/
        },
         password :{
            minlength:8
        },pNo :{
        	minlength:11,
            maxlength:14
        },
    },
    messages:{
       fullName:{
            required : "Please Enter Your First Name",
            minlength:"Name at least 2 chareacters"
        },
        email:{
            required:"Please Enter Your Email Address",
            regax: "Please Enter Valid Number"

        },password :{
            required :"Please Enter Password"
        },pNo:{
            required : "Please Enter Phone Number"
        }
        ,country:{
            required : "Please select your country"
        },address:{
	 required : "Please Enter your Address"
	
}
           
        },
    submitHandler: function(form) {
      form.submit();
    },

   });
</script> 

</body>
</html>

