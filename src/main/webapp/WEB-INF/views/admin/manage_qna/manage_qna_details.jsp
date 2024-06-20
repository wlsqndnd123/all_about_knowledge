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
	<style>
	.right {
  		 text-align: right;
		}
	
	
	
	</style>

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
                                 <li class="nav-item " >
                                    <a class="nav-link " href="manage_memberlist.do">회원 관리
                                        </a>
                                </li>
                                <li class="nav-item " >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>
								
                                <li class="nav-item active">
                                    <a class="nav-link " href="manage_qna.do" >문의 관리
                                    </a>
                                    
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link " href="manage_notification.do">
                                        공지사항 관리
                                    </a>
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
        <div class="row tm-content-row tm-mt-big">
        		<div class="col-12" >
                 <div class="bg-white tm-block col-12" style="height: 700px;">
              
                        <div class="col-12" style="height: 600px;border-right-width: 50px;padding-right: 120px;padding-left: 120px;" >
                        
                            <h2 class="tm-block-title d-inline-block"style=" margin-bottom: 10px;">문의 제목 : 한글이 안나와요</h2>
                    <div class="mb-3">
  						 <label for="staticEmail" class="col-sm-5 col-form-label" style="width: 330px;">문의 코드 : 00001</label>
   						 <label for="staticEmail" class="col-sm-5 col-form-label">아이디 : JIN1234</label>
   						 
   						 <!-- <div class="right">
   						 <button class="btn btn-light btn-sm me-md-2 " type="button">삭제</button>
   						 </div> -->
					</div>
					<div class="mb-3" style="height: 450px;">
					<div  style="width: 50%; float: right; padding-left: 40px;" >
 						 <label for="exampleFormControlTextarea1" class="form-label">문의 답변</label>
  						<textarea class="form-control h-25" id="exampleFormControlTextarea1" rows="13" style="width: 600px;">답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변
  						답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변
  						답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변
  						답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변
  						답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변
  						</textarea>
  					</div>
					<div  style="width: 50%;">

 						 <label for="exampleFormControlTextarea1" class="form-label">문의 사항 내용</label>
  						<textarea class="form-control h-25"  readonly id="exampleFormControlTextarea1" rows="13" style="width: 600px;">내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
  						내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
  						내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
  						내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
  						내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
  						내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
  						</textarea>	
  						
  	
					</div>
					
  						
					</div>
  						<div class="right">
  						<button class="btn btn-light btn-sm me-md-2 " type="button">확인</button>
  						<button class="btn btn-light btn-sm me-md-2" type="button">취소</button>
  						</div>
					
                      
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