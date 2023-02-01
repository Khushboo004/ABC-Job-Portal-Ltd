<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABC Job Portal</title>
<link rel="stylesheet" href="resources/css/all-user-home.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
	
</head>
<body style="background-color: white">
  
<div > 
<%@ include file="../include/header.jsp"%>

		
	<div class="container" > 
			<div class="row pt-3"   >
				<div class="col-lg-6  mb-2 ps-3">
					<img style="width: 100%; height: 100%"
						src="resources/image/Screenshot 2022-07-07 163322.png" alt="">
				</div>
				<div class="col-lg-5 pt-5 ps-5 mb-5">
					<div class=" text-center">
						<!-- <h1>FIND JOB HERE</h1>
						<div class="search-container">
							Search: <input type="text">
						</div> -->
						
						<h1 class="text-success fw-bold">Welcome to ABC Job Portal</h1>
                <p class="text-dark">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nobis laborum aspernatur, voluptas
                    recusandae accusantium iusto laudantium ducimus, amet deserunt veniam delectus aliquam
                    consequuntur quaerat minus ut excepturi voluptate, officia facilis.</p>
                 <a href="registration_form"  class="reg "> Registration Now</a> 
					</div>
				</div>
			</div>
			</div>
		</div> 



    <section class="categories">
        <div class="container categories_contain ">
            <div class="categories-left">
                <h1>Jobs</h1>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tempora repudiandae voluptatem,
                    obcaecati quasi aliquam sed earum non fuga modi nostrum nulla omnis libero error dolore deleniti
                    a tenetur nesciunt deserunt Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magni, rerum
                    tenetur obcaecati deleniti ducimus officia atque sapiente voluptatum quasi eaque! .</p>
                <a href="#" class="bttn">Learn More</a>
            </div>
            <div class="categories-right">
                   
                   
         
                  		
				<c:forEach items="${jobs }" var="job">
						<div class="row  m-2  category" >

							<div class="col">
									<h4 class="fw-bolder ">Name:${job.name}</h4>
								<h5>Job Type: ${job.type}</h5>
								<h5>Job Title: ${job.title}</h5>
								<h6>Location: ${job.location}</h6>

								<button><a href="jobDetails/${job.job_id }" class="btn btn-light">Apply NoW</a></button>


							</div>
							
						</div>
					</c:forEach> 
				</div>

			</div>

                             <%--  <article class="category">
                   
                   <c:forEach items="${jobs }" var="job">
									<h4 class="fw-bolder">Name:${job.name}</h4>
								<h5>Job Type: ${job.type}</h5>
								<h5>Job Title: ${job.title}</h5>
								<h6>Location: ${job.location}</h6>

								<button><a href="registration_form" class="btn btn-light">Apply NoW</a></button>

							</c:forEach>

                </article>
                <article class="category">
                    <c:forEach items="${jobs }" var="job">
									<h4 class="fw-bolder">Name:${job.name}</h4>
								<h5>Job Type: ${job.type}</h5>
								<h5>Job Title: ${job.title}</h5>
								<h6>Location: ${job.location}</h6>

								<button><a href="registration_form" class="btn btn-light">Apply NoW</a></button>

							</c:forEach>

                </article>
                <article class="category">

                   <c:forEach items="${jobs }" var="job">
									<h4 class="fw-bolder">Name:${job.name}</h4>
								<h5>Job Type: ${job.type}</h5>
								<h5>Job Title: ${job.title}</h5>
								<h6>Location: ${job.location}</h6>

								<button><a href="registration_form" class="btn btn-light">Apply NoW</a></button>

							</c:forEach>
                </article> --%>
            </div>
        </div>
    </section>

    

   	<%@ include file="../include/footer.jsp"%></body>


</body>

</html>