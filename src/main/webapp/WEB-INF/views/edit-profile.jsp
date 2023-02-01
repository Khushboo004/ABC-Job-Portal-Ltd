<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link>
</head>
<body>
	<div class="root">
<%@ include file="home-header.jsp"%>

      <section class="h-100 mt-3">
		  <div class="container h-100">
		    <div class="row justify-content-sm-center h-100">
		      <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
		        <div class="card m-3 shadow">
		          <div class="card-body p-5">
		            <h1 class="fs-4 card-title fw-bold mb-4">Edit Profile</h1>
		            <form:form name="form" action="save-edit" method="post" modelAttribute="profile" id="form" onsubmit="return checkValidation()">
		            
		              <div class="form-floating mb-3">
                    	<form:hidden path="id_profile" class="form-control" />
                      </div>
		
		              <div class="form-floating mb-3">
		                <form:input path="first_name" type="text" class="form-control" placeholder="first_name" name="first_name" id="first_name"/>
		                <label for="first_name">First Name</label>
		                <div class="invalid-feedback error errorFname">
		                  <div>
		                    First Name is required
		                  </div>
		                </div>
		              </div>
		
		              <div class="form-floating mb-3">
		                <form:input path="last_name" type="text" class="form-control" placeholder="last_name" name="last_name" id="last_name" />
		                <label for="last_name">Last Name</label>
		                <div class="invalid-feedback error errorLname">
		                  <div>
		                    Last Name is required
		                  </div>
		                </div>
		              </div>
		              
		              <div class="form-floating mb-3">
		                <form:input path="city" type="text" class="form-control" placeholder="city" name="city" id="city" />
		                <label for="city">City</label>
		                <div class="invalid-feedback error errorCity">
		                  <div>City is required</div>
		                </div>
		              </div>
		
		              <div class="form-floating mb-3">
		                <form:input path="country"  type="text" class="form-control" placeholder="country" name="country" id="country" />
		                <label for="country">Country</label>
		                <div class="invalid-feedback error errorCountry">
		                  <div>
		                    Country is required
		                  </div>
		                </div>
		              </div>
		              
		               <div class="form-floating mb-3">
		                <form:textarea path="about"  type="text" class="form-control" placeholder="about" name="about" id="about" />
		                <label for="about">About</label>
		                <div class="invalid-feedback error errorAbout">
		                  <div>
		                    About is required
		                  </div>
		                </div>
		              </div>
		
		              <button class="w-100 btn btn-lg btn-primary" type="submit">Edit</button>
		            </form:form>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</section>

  <%@ include file="../include/footer.jsp" %>
   	</div>
</body>
</html>