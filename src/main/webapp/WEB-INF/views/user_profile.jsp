<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/home.css">

</head>
<body >
<%@ include file="home-header.jsp"%>
  <div class="container mt-3 mb-5 ">
    <div class="row border rounded">
      <div class="col-lg-3 mb-3" >
       <img class="img-fluid rounded-circle m-2"  src="resources/image/pic.png" alt="">
       </div>
       <div class="col-lg-7 mb-3" >
        <div class="info  mt-2 pt-3 pb-3">
          <div class="carbox">
            <h2 class="fw-bold">Name: ${user.fullName }</h2>
            <h4> Email: ${user.email }</h4>
            <h4 >Mobile No: ${user.pNo } </h4>
            <h4>Country: ${user.country } </h4>
            <h4 >Address: ${user.address } </h4>
            <a href="edit/${user.id}" > <i class="fa-solid fa-pen-to-square"></i></a>
                <button type="button" class="btn btn-info  me-2 mt-2">
      <a href="${pageContext.request.contextPath}/postthread/${user.id}" class= "view">Post</a></button>
          
          </div>
        </div>
      </div>
    </div>
    <div class="content">
      <h4>Education: </h4>
      <div class="row  rounded">
        <div class="col ">
          <div class="row mb-1  bg-light">
            <div class="col-md-2">
              2017-05
            </div>
            <div class="col-md-9">
              <ul class="text-black">
  
                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore dolore, sit accusamus dolorem quaerat
                  culpa illum, accusantium placeat facilis officia incidunt tenetur officiis quibusdam nesciunt.</li>
              </ul>
            </div>
          </div>
  
        <div class="row  bg-light">
          <div class="col-md-2">
            2019-05
          </div>
          <div class="col-md-9">
            <ul>
              <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius ullam sequi quisquam facilis dolorum
                laboriosam ratione iusto consequuntur praesentium perspiciatis!</li>
             
            </ul>
          </div>
        </div>
        </div>
      </div>
      <h4>Skils:</h4>
      <div class="row  rounded">
        <div class="col ">
          <div class="row mb-1  bg-light">
            <div class="col-md-2">
              2017-05
            </div>
            <div class="col-md-9">
              <ul>
  
                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore dolore, sit accusamus dolorem quaerat
                  culpa illum, accusantium placeat facilis officia incidunt tenetur officiis quibusdam nesciunt.</li>
               
              </ul>
            </div>
          </div>
  
        <div class="row  bg-light">
          <div class="col-md-2">
            2019-05
          </div>
          <div class="col-md-9">
            <ul>
              <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius ullam sequi quisquam facilis dolorum
                laboriosam ratione iusto consequuntur praesentium perspiciatis!</li>
              
            </ul>
          </div>
        </div>
        </div>
      </div>
      <h4>Experience:</h4>
      <div class="row  rounded">
        <div class="col ">
          <div class="row mb-1  bg-light">
            <div class="col-md-2">
              2017-05
            </div>
            <div class="col-md-9">
              <ul>
  
                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore dolore, sit accusamus dolorem quaerat
                  culpa illum, accusantium placeat facilis officia incidunt tenetur officiis quibusdam nesciunt.</li>
                
              </ul>
            </div>
          </div>
  
        <div class="row  bg-light">
          <div class="col-md-2">
            2019-05
          </div>
          <div class="col-md-9">
            <ul>
              <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius ullam sequi quisquam facilis dolorum
                laboriosam ratione iusto consequuntur praesentium perspiciatis!</li>
              
            </ul>
          </div>
        </div>
        </div>
      </div>
      <h4>Interested :</h4>
      <div class="row  rounded">
        <div class="col ">
          <div class="row mb-1  bg-light">
            <div class="col-md-2">
              2017-05
            </div>
            <div class="col-md-9">
              <ul>
  
                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore dolore, sit accusamus dolorem quaerat
                  culpa illum, accusantium placeat facilis officia incidunt tenetur officiis quibusdam nesciunt.</li>
               
              </ul>
            </div>
          </div>
  
        <div class="row  bg-light">
          <div class="col-md-2">
            2019-05
          </div>
          <div class="col-md-9">
            <ul>
              <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius ullam sequi quisquam facilis dolorum
                laboriosam ratione iusto consequuntur praesentium perspiciatis!</li>
              
            </ul>
          </div>
        </div>
        </div>
      </div>
    </div>
 

      
 <%--          <button type="button" class="btn btn-info  me-2 mt-2">
      <a href="${pageContext.request.contextPath}/threadRead/${user.id}" class= "view">Post</a></button>
  </div>
    --%>
   

 
</body>
</html>