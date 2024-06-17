<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All_About_Knowledge</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fullcalendar.min.css">
    <!-- https://fullcalendar.io/ -->
     <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/family.css">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/tooplate.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	
<script type ="text/javascript">
/* $(function(){
		
		$("#updateSubmit").click(function(){
			$("#frmGet").action="manage_member_details.do";
			$("#frmGet").submit();
		});//click

		$("#saveSubmit").click(function(){
			$("#frmGet").action="manage_member_modyify.do";
			$("#frmGet").submit();
		});//click
		
	});//ready 
	 */
	 
	 $(document).ready(function(){
         $("#updateSubmit").click(function(){
             $("#frmGet").attr("action", "manage_member_details.do");
             $("#frmGet").submit();
         });

         $("#saveSubmit").click(function(){
             $("#frmGet").attr("action", "manage_member_modyify.do");
             $("#frmGet").submit();
         });
     });
	
</script>

</head>
<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="adminindex.do">
                            <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
                            <h1 class="tm-site-title mb-0">All About Knowledge</h1>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#void" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        회원 관리
                                    </a>
                                    <div class="dropdown-menu active" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_memberlist.do">회원 리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown" >
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">강사 관리
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_instructor.do">강사 리스트</a>
                                    </div>
                                </li>

                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">문의 관리</a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_qna.do">문의 리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        공지사항 관리
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_notification.do">공지사항 리스트</a>
                                    </div>
                                </li>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-flex" href="admin_index.do">
                                        <i class="far fa-user mr-2 tm-logout-icon"></i>
                                        <span>Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
             <!-- row -->
        <div class="row tm-mt-big" style="width: 100%">
            <div class="col-xl-8 col-lg-10 col-md-12 col-sm-12" style="width: 100%;margin: 0 auto;" >
                <div class="bg-white tm-block" style="width: 100%" >
                    <div class="row">
                        <div class="col-12">
                        
                        
                    <form action="manage_member_details.do" method="get" id ="frmGet">
                    
                            <h2 class="tm-block-title d-inline-block">사용자 상세</h2>
                    <div class="mb-3">
                    
  					<div>
                    <table class="table table-hover"  style="width: 100%;margin: auto; text-align: center;">
    
                    <tbody>

                      <tr>
                    <th>이름</th>
                     <td>
            		<c:choose>
            		 <c:when test="${requestScope.flag eq '0'}">
            		<input type="text" name="name" value="<c:out value="${mmDomain.name }"/>"readonly>
            		</c:when>
                    <c:otherwise>
                    <input type="text" name="name" value="<c:out value="${mmDomain.name }"/>">
                     </c:otherwise>
                    </c:choose>
                    </td>
                    </tr>
                 
                    
                      <tr>
                    <th>아이디</th>
                     <td>
            		
            		<input type="text" name="std_id" value="${mmDomain.std_id }"readonly>
            		
                    </td>
                    </tr>
                
                    
                     <tr>
                    <th>연락처</th>
                     <td>
            		<c:choose>
            		 <c:when test="${requestScope.flag eq '0'}">
            		<input type="text" name="tel" value="${mmDomain.tel }"readonly>
            		</c:when>
                    <c:otherwise>
                    <input type="text" name="tel" value="${mmDomain.tel }">
                     </c:otherwise>
                    </c:choose>
                    </td>
                    </tr>
                    
                    
                    
                    
                     <tr>
                    <th>이메일</th>
                     <td>
            		<c:choose>
            		 <c:when test="${requestScope.flag eq '0'}">
            		<input type="text" name="email" value="${mmDomain.email }"readonly>
            		</c:when>
                    <c:otherwise>
                    <input type="text" name="email" value="${mmDomain.email }">
                     </c:otherwise>
                    </c:choose>
                    </td>
                    </tr>
                    
                    
                     <tr>
                    <th>생년월일</th>
        <td>
            <c:choose>
                <c:when test="${requestScope.flag eq '0'}">
                    <input type="text" name="birth" value="${mmDomain.birth}"readonly>
                </c:when>
                <c:otherwise>
                    <input type="text" name="birth" value="${mmDomain.birth}" >
                </c:otherwise>
            </c:choose>
        </td>
    </tr>
  					
  
                    </tbody>
                    </table>
                    </div>
                    
                    <c:if test="${requestScope.flag eq '0' }">
                    <input type="hidden" name="flag" value="1" >
                    <input type="button" class="btn btn-light btn-sm me-md-2" value="수정" id="updateSubmit"/>
					</c:if>
					
                  	<c:if test="${requestScope.flag eq '1' }">
					<input type="button" class="btn btn-light btn-sm me-md-2" value="저장" id ="saveSubmit"/>
					</c:if>
                   
                   
                   
                    
					</div>
					</form> 
					
                        </div>
                    </div>
                </div>
            </div>
            
        <footer class="row tm-mt-small" style="width: 90%;margin:auto;">
       
        </footer>
    </div>
 <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
  <!-- https://jquery.com/download/ -->
   <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
  <script type="text/javascript">
  
  </script>
    <!-- https://getbootstrap.com/ -->
</body>

</html>