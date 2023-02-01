<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ page isELIgnored = "false" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="resources/css/thread.css" rel="stylesheet" />
<style type="text/css">
.error {
    color:#ad1c1c;
}
</style>
</head>
<body>
	<%@ include file="home-header.jsp"%>

  <div class="container my-3 ">
            <div class="row row-cols-1 mt-3">
                <div class="col mt-2">
                    <div class="card p-2 d-flex">
                        <div class="wrapper d-flex align-items-center me-3">
                            <div class="logo ">
                                <a class="text-decoration-none"
                                    href="userprofile?name=${thread.getUser().getFullName()}&id=${thread.getUser().getId()}">
                                </a>
                            </div>
                            <div class="detail">
                                <a class="text-decoration-none"
                                    href="${pageContext.request.contextPath}/userprofile">
                                    <span class="fs-3 fw-bold text-dark">${thread.getUser().getFullName()}</span></a>
                                    

                            </div>
                        </div>
                        <div class="content mt-3">
                            <h5 class="text-secondary fs-3">Title: ${thread.getTitle()}</h5>
                            <p>Content: ${thread.getContent()}</p>
<!--                             <small class="text-muted">Tags: </small>
 -->                        </div>
                       <div class="comments">
                            <div class="heading">
                                <h4>Comments</h4>
                            </div>

                            <c:forEach items="${listComment}" var="comment">

                                <div class="row row-cols-1 mt-3 mb-1">
                                    <div class="col mt-3">
                                        <div class="card p-2 d-flex">
                                            <div class="wrapper d-flex align-items-center me-3">
                                                <div class="logo">
                                                    <a class="text-decoration-none"
                                                        href="userprofile?id=${comment.getUser().getId()}">
                                                    
                                                    </a>
                                                </div>
                                                <div class="detail">
                                                    <a class="text-decoration-none"
                                                        href="userprofile?name=${thread.getUser().getFullName()}&id=${thread.getUser().getId()}">
                                                        <span
                                                            class="fs-6 fw-bold text-dark"> ${comment.getUser().getFullName()}</span></a>
                                                </div>
                                            </div>
                                            <div class="content mt-1">
                                                <p> ${comment.getComment()}</p>
                                                 <div id="output"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                              <c:if test="${listComment.isEmpty()}">
                                <div class="no-comment">
                                    <p class="text-secondary text-center">Be the first one to comment this post</p>
                                </div>
                            </c:if> 
                            <form  action="${pageContext.request.contextPath}/postComment/${thread.getUser().getId()}/${thread.id_thread}" method="post" id="formValidation">           
                                <input type="hidden" name="id" value="${thread.id_thread}">
                                 <input type="hidden" name="u_id" value="${user.id}">
                                
                                <div class="form-floating">
                                    <textarea name="comment" class="form-control" id="comment" required></textarea>
                                    <label for="floatingTextarea">Comment</label>
                                </div>
                                <button type="submit"  onclick="submitData();" class="btn btn-primary fw-bold mt-3">Send Comment</button>
                            </form>
                            
                        </div> 
                    </div>
                </div>
            </div>
            </div>
            

    <script type="text/javascript">
$("#formValidation").validate({
    rules:{
    	comment:{
            minlength:1
        },
    
    }
    messages:{
    	comment:{
    		required : "Please Enter Your First Name",
       }
	
           
        },
    submitHandler: function(form) {
      form.submit();
    },

   });
</script> 
</body>
</html>