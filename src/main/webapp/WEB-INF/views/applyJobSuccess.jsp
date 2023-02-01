    
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

        
        <h1 class="text-success fw-bolder ">Thank You!!!</h1>
       <h3 class="text-info fw-bold">${user.fullName}</h3>
        <h1 class="text-dark fw-bold"> You have registered successfully </h1>
        Back to <a href ="homePage" style="text-decoration: none;" class=" fw-bold">Go To Home PAge</a>
              
</div>
</div>
</div>
</div>
</div>



	<%@ include file="../include/footer.jsp"%>

</body>
</html>
    
<%--     
    
      <%@page isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank You Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body class="" style="background: #773e3e">


<div class="container my-5">
  
        <div class="container my-5">
        <div class="row mt-5">
        <div class="col-md-6 offset-md-3">
        <div class="card">
        <div class="card-body text-center mt-5">
        
        <h1>Thank You!!!</h1>
       <h3> ${user.fullName}</h3>
        <h1>You have registered successfully </h1>
        Back to <a href ="homePage">Go To Home PAge</a>
        
        
        
        </div>
        </div>
        </div>
        </div>
        </div>
   
</div>   
</body>
</html> --%>