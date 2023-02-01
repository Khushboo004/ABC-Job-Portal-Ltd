<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="resources/css/style.css" rel="stylesheet">

</head>
<body >
<%@ include file="home-header.jsp"%>
  <div class="container mt-3 mb-5 ">
    <div class="row border rounded">
      <div class="col-lg-5 mb-3" >
       <img class="img-fluid rounded-circle m-2" src="pic.png" alt="">
       </div>
       <div class="col-lg-5 mb-3" >
        <div class="info  mt-2 pt-3 pb-3">
          <div class="carbox">
            <h2 class="fw-bold">Name: ${user.fullName }</h2>
            <h3> Email: ${user.email }</h3>
            <h4 >Mobile No: ${user.pNo } </h4>
            <h4>Country: ${user.country } </h4>
            <h4 >Address: ${user.address } </h4>
            <a href="${pageContext.request.contextPath }/edit/${user.id}" ><i class="fa-solid fa-pen-to-square"></i></a>
          </div>
        </div>
      </div>
    </div>
    <div class="content">
      <h1>Education: </h1>
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
                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias distinctio hic, aliquid modi veniam
                  consequuntur.</li>
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
              <li>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Animi ipsam tempore corporis dolorem! Dolore
                magni ullam ut suscipit sint pariatur, harum in illum ratione aspernatur qui, deserunt dolorem non
                corporis!</li>
            </ul>
          </div>
        </div>
        </div>
      </div>
      <h1>Skils:</h1>
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
                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias distinctio hic, aliquid modi veniam
                  consequuntur.</li>
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
              <li>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Animi ipsam tempore corporis dolorem! Dolore
                magni ullam ut suscipit sint pariatur, harum in illum ratione aspernatur qui, deserunt dolorem non
                corporis!</li>
            </ul>
          </div>
        </div>
        </div>
      </div>
      <h1>Experience:</h1>
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
                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias distinctio hic, aliquid modi veniam
                  consequuntur.</li>
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
              <li>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Animi ipsam tempore corporis dolorem! Dolore
                magni ullam ut suscipit sint pariatur, harum in illum ratione aspernatur qui, deserunt dolorem non
                corporis!</li>
            </ul>
          </div>
        </div>
        </div>
      </div>
      <h1>Interested :</h1>
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
                <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias distinctio hic, aliquid modi veniam
                  consequuntur.</li>
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
              <li>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Animi ipsam tempore corporis dolorem! Dolore
                magni ullam ut suscipit sint pariatur, harum in illum ratione aspernatur qui, deserunt dolorem non
                corporis!</li>
            </ul>
          </div>
        </div>
        </div>
      </div>
    </div>
  </div>
    <%@ include file="../include/footer.jsp"%></body>
</body>
</html>