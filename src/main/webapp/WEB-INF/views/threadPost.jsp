<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABC Job Portal</title>
 <link href="resources/css/thread-form.css" rel="stylesheet" />

</head>
<body>
<%@ include file="home-header.jsp"%>
            <section class="h-100 mt-3">
                <div class="container h-100">
                    <div class="row justify-content-sm-center h-100">
                        <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
                            <div class="card m-3 shadow">
                                <div class="card-body p-5">
                                    <h1 class="fs-4 card-title fw-bold mb-4">Create Post</h1>
                                    <form action="${pageContext.request.contextPath}/postThread/${user.id}" method="post">
                                     <div class="form-floating mb-3">
                                            <input type="hidden" class="form-control"
                                                value="${user.id}" name="id" id="id" />
         
                                        </div>
                                        <div class="form-floating mb-3">
                                        <label>Title</label>
                                            <input  type="text" class="form-control"
                                                name="title" id="title" required="required"/>         
                                                <div>${messageTitle}</div>
                                            </div>
                                                              <label>Content</label>
                                        <div class="form-floating mb-3">
                                            <textarea  class="form-control" placeholder="Content" name="content" id="content" required="required"></textarea>

                                                    ${messageContent}
   
                                        </div>

                                        
                                        <p class="error">${messageTag}</p> 
                                        <button class="w-100 btn btn-lg btn-primary" type="submit">Post</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

</body>
</html>