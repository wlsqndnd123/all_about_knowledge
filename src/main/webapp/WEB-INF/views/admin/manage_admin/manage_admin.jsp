<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<style>

th{font-weight: normal;font-size: 13px;}
tr{vertical-align: middle;}
td{vertical-align: middle; font-size: 13px;}
.permission{
text-align: center;
}
.tbl{

}
</style>
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

</head>

<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="admin_main.do">
                            <h3 class="tm-site-title mb-0">All About Knowledge</h3>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                            <c:if test="${sessionScope.adminPermission.category_management == 'Y'}">
                                <li class="nav-item dropdown   active">
                                    <a class="nav-link dropdown-toggle" href="#void" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
                                </c:if>
                      <c:if test="${sessionScope.adminPermission.member_management == 'Y'}">
                                <li class="nav-item">
                                    <a class="nav-link" href="manage_memberlist.do">
                                        회원 관리
                                    </a>
                                </li>
                                </c:if>
                                  <c:if test="${sessionScope.adminPermission.instructor_management == 'Y'}">
                                <li class="nav-item " >
                                    <a class="nav-link" href="manage_instructor.do">강사 관리
                                        </a>
                                </li>
                                </c:if>
	 <c:if test="${sessionScope.adminPermission.qna_management == 'Y'}">
                                <li class="nav-item">
                                    <a class="nav-link" href="manage_qna.do">문의 관리</a>
                                </li>
                                </c:if>
       <c:if test="${sessionScope.adminPermission.notice_management == 'Y'}">
                                <li class="nav-item">
                                    <a class="nav-link " href="manage_notification.do">
                                        공지사항 관리
                                    </a>
                                </li>
                                </c:if>
                                <c:if test="${sessionScope.auth == 'SUPER'}">
                                <li class="nav-item">
                                    <a class="nav-link " href="manage_admin.do">
                                        관리자 관리
                                    </a>
                                </li>
                                </c:if>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-flex" href="admin_index_logout.do">
                                        <i class="far fa-user mr-2 tm-logout-icon"></i>
                                        <span>Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            </div>
            
             <!-- row -->
        <div class="container" style="padding: 1rem">
                <div class="bg-white tm-block col-12"  style=" text-align: center ;margin-left:5px; overflow:scroll;width: 75vw;position: fixed;height: 85%">
                    <div class="col-12">
                        <div class="col-12">
                        <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex" style=" margin-left :65% ;height:  40px; text-align: right; width: 100%;" > 
             <!-- <ol class="breadcrumb"style="width: 95%;background-color: transparent ; padding-top: 0px; " >
             <li class="breadcrumb-item">
             교육과목 관리
             </li>
             <li class="breadcrumb-item active">
             교육 카테고리 리스트</li></ol> -->
             </div>
               <div class="d-grid gap-2 d-md-flex justify-content-md-end">
</div>	
                    <div style="text-align: center;margin: auto;width: 75%"  >
                    <div style="text-align: right;">
                    <br>
                    <input type="button" class="btn-light" id ="btnAdd" value="관리자 추가"/>
                    <br>
                    <br>
                    </div>
                    <div>
                    <table class="table table-hover" >
                    <thead>
                    <tr><th>관리자 아이디</th><th>관리자 권한</th></tr>
                    </thead>
                    <c:forEach var="list" items="${ list }">
                    <tbody>
                    <tr><td>${list.id }</td><td class="permission">${list.permissions}</td>
                    </c:forEach>
                    </tbody>
                    </table>
                    </div>
                    <div id ="adminAdd" style="display: none;" class="tab"> 
                    관리자 추가
                    <br>
                    <br>
                    <table class="table table-hover" >
                    <tr><td>관리자 아이디</td><td><input type="text" name ="id"/></td></tr>
                    <tr><td>비밀번호</td><td><input type="text" name ="password"/></td></tr>
                    </table>
                    <br>
                    <br>
                    <br>
                    <table class="table table-hover" >
                    <tr><td>교육과목</td><td>권한부여<input type="radio" name="category_management" value="Y"/></td></tr>
                    <tr><td>강사</td><td>권한부여<input type="radio" name="instructor_management" value="Y"/></td></tr>
                    <tr><td>문의</td><td>권한부여<input type="radio" name="qna_management" value="Y"/></td></tr>
                    <tr><td>회원</td><td>권한부여<input type="radio" name="member_management" value="Y"/></td></tr>
                    <tr><td>공지사항</td><td>권한부여<input type="radio" name="notice_management" value="Y"/></td></tr>
                    </table>
                    </div>
                    </div>
                        </div>
                    </div>
                </div>
            </div>
          
 </div>

 <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
 <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
  <script type="text/javascript">
        $(function() {
         $("#btnAdd").click(function(){
        	 const tab=document.querySelector('.tab');
        	 tab.style.display = 'block';
         })
        });
    </script>
</body>

</html>