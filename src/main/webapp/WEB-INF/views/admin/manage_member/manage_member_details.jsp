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
	$(function(){
		
		$("#updateSubmit").click(function(){
			$("#frmPost").action="manage_member_param.do";
			$("#frmPost").submit();
		});//click
		$("#saveSubmit").click(function(){
			$("#frmPost2").action="manage_member_param.do";
			$("#frmPost2").submit();
		});//click
		
	});//ready
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
                            <h2 class="tm-block-title d-inline-block">사용자 상세</h2>
                    <div class="mb-3">
                    
  					<div>
                    <table class="table table-hover"  style="width: 100%;margin: auto; text-align: center;">
    
                    <tbody>
                    
                    <tr>
                    <th>이름</th>
                    <td>진수현</td>
                    
                    <c:if test="${flag eq '1' }">
                    <td><input type="text" name="contact" value="진수현"></td>
                    </c:if>
                 
                    
                    
                    </tr>
                    
                     <tr>
                    <th>회원아이디</th>
                    <td>JIN123</td>
                    <c:if test="${flag eq '1' }">
                    <td><input type="text" name="contact" value="JIN123"></td>
                    </c:if>
                    </tr>
                    
                     <tr>
                    <th>연락처</th>
                    <td>010-1234-5678</td>
                    <c:if test="${flag eq '1' }">
                    <td><input type="text" name="contact" value="010-1234-5678"></td>
                    </c:if>
                    </tr>
                    
                     <tr>
                    <th>이메일</th>
                    <td>JIN123@naver.com</td>
                    <c:if test="${flag eq '1' }">
                    <td><input type="text" name="contact" value="JIN123@naver.com"></td>
                    </c:if>
                    </tr>
                    
                     <tr>
                    <th>생년월일</th>
                    <td>970630</td>
                    <c:if test="${flag eq '1' }">
                    <td><input type="text" name="contact" value="970630"></td>
                    </c:if>
                    </tr>
  					
  
                    </tbody>
                    </table>
                    </div>
                    
                    <c:if test="${flag != '1' }">
                    <form action="manage_member_details.do" method="post" id ="frmPost">
					<input type="button" class="btn btn-light btn-sm me-md-2" value="수정" id ="updateSubmit"/>
					</form> 
					</c:if>
					
                  	<c:if test="${flag eq '1' }">
                  	
					<form action="manage_member_details.do" method="post" id ="frmPost2">
					<input type="button" class="btn btn-light btn-sm me-md-2" value="저장" id ="saveSubmit"/>
					</form> 
					</c:if>
                   
                   
                   
                    
					</div>
					
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