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
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_memberlist.do">회원 리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item" >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>

                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">문의 관리</a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_qna.do">문의 리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item  active">
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
        <div class="col-12" style="width: 100%; margin-top: 15px;">
         <div class="col-12" style="width: 100%;margin: 0 auto;" >
                 <div class="bg-white tm-block col-12" style="width: 100%" >
                    <div class="col-12">
                        <div class="col-12">
    <form id ="frm" action="notification_write_form_process.do" method="post" enctype="multipart/form-data">
                            <h2 class="tm-block-title d-inline-block">공지사항 작성</h2>
                    <div class="mb-3">
  						 <label for="exampleFormControlTextarea1" class="form-label">공지사항 제목</label>
    <div class="mb-3">
      <input type="email" class="form-control" id="exampleFormControlInput1" name="title">
    </div>
					</div>
                    <div class="mb-3">
  						 <label for="exampleFormControlTextarea1" class="form-label">공지사항 글 번호</label>
    <div class="mb-3">
      <input type="email" class="form-control" value="${requestScope.noti_no }" id="exampleFormControlInput1" name="noti_no" readonly="readonly">
    </div>
					</div>
					<div class="mb-3">
 				<label for="exampleFormControlTextarea1" class="form-label">공지사항 이미지</label>
				 <input class="form-control" type="file" id="formFile" name="image">	
					<div class="mb-3">
					</div>
 						 <label for="exampleFormControlTextarea1" class="form-label">공지사항 내용</label>
  						<textarea class="form-control h-25" id="exampleFormControlTextarea1" rows="15" name ="content"></textarea>
</div>
<div style="text-align: center;">
<input type="button" class="btn btn-link" value="작성" id ="btnwrite"/>
<input type="button" class="btn btn-link" value="취소" id ="btnback"/>
</div>
    </form>
                        </div>
                    </div>
                </div>
            </div>
    </div>
 <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
  <!-- https://jquery.com/download/ -->
   <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
  <script type="text/javascript">
  $(function(){
	  $("#btnback").click(function(){
		  history.back();
	  })
  $("#btnwrite").click(function(){

			// 이미지만 업로드하도록 설정
			var file = $("#upFile").val();
			var selectedExt = file.substring(file.lastIndexOf(".")+1);

			var extArr = ["png", "jpg", "gif", "jpeg", "bmp"];
			var flag = false;

			for(var i = 0; i < extArr.length; i++) {
			if(selectedExt == extArr[i]) {
			flag = true;
			break;
			} // end if
			} // end for

			if(!flag) {
			alert(selectedExt + "는 업로드 가능한 파일의 확장자가 아닙니다.");
			return;
			} // end if

			$("#frm").submit();
			}); // click
  })
  
  </script>
    <!-- https://getbootstrap.com/ -->
</body>

</html>