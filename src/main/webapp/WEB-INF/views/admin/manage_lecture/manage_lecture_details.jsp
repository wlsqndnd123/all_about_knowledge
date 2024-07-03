<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<style>
th,td,tr{font-size: 13px;}
a {text-decoration: none;}




.content-wrapper {
            display: flex;
            justify-content: space-between;
            width: 100%;
            margin-bottom: 20px;
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	
<script type ="text/javascript">
	 $(document).ready(function(){
         $("#updateSubmit").click(function(){
             $("#frmGet").attr("action", "manage_member_details.do");
             $("#frmGet").submit();
         });


         
         $("#saveSubmit").click(function(){

        	 if(!confirm("변경내용을 저장 하시겠습니까?")){
         	    
         	}else{
             $("#frmGet").attr("action", "manage_member_modyify.do");
             $("#frmGet").submit();
         	    
         	}
        	 
         });

         var cnt = "${cnt}";
         if (cnt == 1) {
             alert("수정 완료");
             location.href="manage_member_details.do?std_id=${std_id}&flag=0";
         }else if(cnt == 2){
        	 alert("입력하지 않은 값이 있습니다.")
        	 location.href="manage_member_details.do?std_id=${std_id}&flag=0";
         }else if(cnt == 3){
        	 alert("이메일 형식이 아닙니다.")
        	 location.href="manage_member_details.do?std_id=${std_id}&flag=0";
         }
         
  
         $("#back").click(function(){
		
        	 location.href="manage_memberlist.do";

         });

     });

	 function validateInput(event) {
         const charCode = event.which ? event.which : event.keyCode;
         const charStr = String.fromCharCode(charCode);
         // 정규 표현식을 사용하여 문자만 허용
         if (!/^[a-zA-Z]*$/.test(charStr)) {
             event.preventDefault();
         }
     }
	 
	 function formatTelInput(event) {
         const input = event.target;
         let value = input.value.replace(/[^0-9]/g, ''); // 숫자 이외의 문자 제거

         // 최대 11자리까지만 입력 허용
         if (value.length > 11) {
             value = value.substring(0, 11);
         }

         // 3번째 자리와 이후 4번째 자리마다 '-' 추가
         if (value.length > 3) {
             value = value.substring(0, 3) + '-' + value.substring(3);
         }
         if (value.length > 8) {
             value = value.substring(0, 8) + '-' + value.substring(8);
         }

         input.value = value;
     }
	 
	 
</script>





<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="adminindex.do">
                            <h3 class="tm-site-title mb-0">All About Knowledge</h3>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                       <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                              <c:if test="${sessionScope.adminPermission.category_management == 'Y'}">
    
                                <li class="nav-item dropdown active ">
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
                                    <a class="nav-link " href="manage_memberlist.do">
                                        회원 관리
                                    </a>
                                </li>
                                </c:if>
                               <c:if test="${sessionScope.adminPermission.instructor_management == 'Y'}">
                                <li class="nav-item " >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>
								</c:if>
								<c:if test="${sessionScope.adminPermission.qna_management == 'Y'}">
                                
                                <li class="nav-item  ">
                                    <a class="nav-link" href="manage_qna.do">문의 관리</a>
                                </li>
                                </c:if>
                                <c:if test="${sessionScope.adminPermission.notice_management == 'Y'}">
                                <li class="nav-item ">
                                    <a class="nav-link " href="manage_notification.do">
                                        공지사항 관리
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
                <div class="bg-white tm-block col-12" style="width: 20vw;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" >
                 <div>
                <table class ="table table-hover">
                <tr><td>${ adminid }님, 환영합니다 !</td></tr>
                </table>
                </div>
                </div>
            
               
                 <div class="bg-white tm-block col-12" style="overflow:scroll;margin-left: 21vw;width: 62vw;position: fixed;height: 85%">    
                 <div class="col-12">
                        <div class="col-12">
                  <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex" style=" margin-left :65% ;height:  40px; text-align: right; width: 100%;" > 
             <ol class="breadcrumb"style="width: 95%;background-color: transparent ; padding-top: 0px; " >
             <li class="breadcrumb-item">
             강의신청 관리
             </li>
             <li class="breadcrumb-item active">
             강의신청 상세</li></ol>
             </div>
                           
          	<form action="manage_member_details.do" method="get" id ="frmGet" style="margin-inline: auto;">
                    
         		<div class="container_sub">
        <div class="content-wrapper">
            <div class="content-section">
            
                <img src="http://localhost/all_about_knowledge/front/admin/img/JAVA.png" alt="Java">
            </div>
                <div class="text-section">
                    <h3 class="tm-block-title"><c:out value="${smDomain.sub_title }"/></h3>
                    <label>카테고리 : <c:out value="${smDomain.cat_name }"/></label>
                </div>
            <div class="content-section">
            
                <img src="http://localhost/all_about_knowledge/front/admin/img/%EB%94%94%EB%AA%A8%EC%94%A8.png" alt="Demo Instructor">
            </div>
                <div class="text-section">
                    <h3 class="tm-block-title">강사명 : <c:out value="${smDomain.name }"/></h3>
                    <label >강사 소개 : </label>
                </div>
        </div>

        <div class="content-section">
            <div class="text-section">
                <label for="overview" class="form-label">학습 개요</label>
                <textarea class="form-control h-25" id="overview" readonly rows="2"><c:out value="${smDomain.intro }"/></textarea>

                <label for="goal" class="form-label">학습 목표</label>
                <textarea class="form-control h-25" id="goal" readonly rows="2"><c:out value="${smDomain.goal }"/></textarea>
            </div>
        </div>

        <div class="table-container">
            <h2 class="tm-block-title">강의 목차</h2>
            <div style="height: 200px; overflow-y: auto">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>차시</th>
                            <th>제목</th>
                            <th>강의목표</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="lmd" items="${requestScope.lecList }" varStatus="i">
                    <tr>
                    <td>${i.index + 1}차시</td>
                    <td><a href="manage_qna_details.do"><c:out value="${lmd.title}"/></a></td>
                    <td><c:out value="${lmd.lec_explain}"/></td>
                    </tr>
					</c:forEach>
                    </tbody> 
                </table>
            </div>
        </div>

        <div class="buttons">
            <button class="btn btn-light btn-sm" type="button">승인</button>
            <button class="btn btn-light btn-sm" type="button">반려</button>
            <button class="btn btn-light btn-sm" type="button">취소</button>
        </div>
    </div>
    	</form>
    	</div>
    	</div>
    </div>
    </div>
     <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
 <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
   <script type="text/javascript" src="<c:url value ="/resources/js/datatables.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/Chart.min.js"/>"></script>
	</div>





<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All_About_Knowledge</title>
    <!--

   

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
                                <li class="nav-item dropdown active">
                                    <a class="nav-link dropdown-toggle" href="#void" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
                               <li class="nav-item">
                                    <a class="nav-link " href="manage_memberlist.do" >회원 관리
                                    </a>
                                    
                                </li>
                                <li class="nav-item " >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>

								 <li class="nav-item">
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
                        
					<div style="width: 600px; float: right; ">
					<h2 class="tm-block-title d-inline-block">강의 목차</h2>
					<div class="mb-3" style="height: 200px; overflow-y: auto"> 
					<table class="table table-hover"  style="width: 100%;margin: auto; text-align: center; ">
                  
                    <thead>
                    <tr>
                    <th>차시</th>
                    <th>제목</th>
                    <th>강의목표</th>
                    </tr>
                    </thead>
                    
                    <tbody>
                    <tr>
                    <td>1차시</td>
                    <td><a href="manage_qna_details.do">스티키 핑거</a></td>
                    <td>몰라</td>
                    </tr>

					<tr>
                    <td>2차시</td>
                    <td><a href="manage_qna_details.do">스티키 핑거</a></td>
                    <td>몰라</td>
                    </tr>
					
					<tr>
                    <td>3차시</td>
                    <td><a href="manage_qna_details.do">스티키 핑거</a></td>
                    <td>몰라</td>
                    </tr>

                    </tbody>
                    </table>
					
					</div>
					
					
					</div>
                        <div style="width: 600px;" >
                        <div class="mb-3">           
                        	<img src="http://localhost/all_about_knowledge/front/admin/img/JAVA.png" border="0" width="120" height="100">
                            <h2 class="tm-block-title d-inline-block">이 맛은 자바군!</h2>
                              <label class="col-sm-5 col-form-label">프로그래밍 언어 > 자바</label> 
                              
                             
                        </div>
                        
       
                         <div class="mb-3" >           
                        <img src="http://localhost/all_about_knowledge/front/admin/img/%EB%94%94%EB%AA%A8%EC%94%A8.png" border="0" width="120" height="100">
                            <h2 class="tm-block-title d-inline-block">디모씨 강사</h2>
                              <label class="col-sm-5 col-form-label">강사 소개 : 내가 디오다!</label>
                        </div>

					
					
					
					<div class="mb-3" style=" width: 600px;">
					
 						 <label for="exampleFormControlTextarea1" class="form-label">학습 개요</label>
  						<textarea class="form-control h-25" id="exampleFormControlTextarea1" readonly rows="2" style=" width: 600px;">잘해보자
  						</textarea>
  						
  						 <label for="exampleFormControlTextarea1" class="form-label">학습 목표</label>
  						<textarea class="form-control h-25" id="exampleFormControlTextarea1" readonly rows="2" style=" width: 600px;">잘 될꺼야
  						</textarea>
  						
					</div>
  					</div>	
					
					
					<div>
						
  						<div class="right">
  						<button class="btn btn-light btn-sm me-md-2 " type="button">승인</button>
  						<button class="btn btn-light btn-sm me-md-2" type="button">반려</button>
  						<button class="btn btn-light btn-sm me-md-2" type="button">취소</button>
  						</div>
  						
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
    <!-- https://getbootstrap.com/ --> --%>
</body>

</html>