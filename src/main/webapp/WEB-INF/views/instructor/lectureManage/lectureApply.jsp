<!DOCTYPE html>
<html>

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" ><!-- content="IE=edge" -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<!--jQuery CDN 시작-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuery CDN 끝-->

    <title>AAK</title>

    <!-- Custom fonts for this template-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="http://localhost/all_about_knowledge/resources/css/sb-admin-2.min.css" rel="stylesheet">

	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LJ3XOMiYvVRy4X4H6YphqQLzzsUz1+cPTnWBXOpacAdMQuPBM0dAVPvcjFpzeFnC" crossorigin="anonymous">
	
	<!-- Bootstrap JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-Um/z5h4jUjzfcVklr/dWUp5QL7fWHazAqGqJSK1ovRPqVxB5LQcbxV/tdxJmpt3V" crossorigin="anonymous"></script>


<!-- <style type="text/css">

    .custom-label {
        padding-right: 10px; /* 시작과 끝에 동일한 간격을 주기 위한 padding 값 설정 */
    }
</style> -->


<!-- 동적인 행 추가  -->
<script type="text/javascript">
var cnt = 0;
$(function () {
	
	$("#add").click(function(){
		var lesson=$("#lesson").val();
		var title=$("#title").val();
		var explain=$("#explain").val();
		var fileNm=$("#fileNm").val();
		
		if( lesson == ""){
			alert("차시는 필수 입력");
			$("#lesson").focus();
			return;
		}
		if( title == ""){
			alert("제목 필수 입력");
			$("#title").focus();
			return;
		}
		if( explain == ""){
			alert("강의계획은 필수 입력");
			$("#explain").focus();
			return;
		}
		if( fileNm == ""){
			alert("강의 파일은 필수 입력");
			return;
		}
		
		 fileNm=fileNm.substring( fileNm.lastIndexOf("\\")+1);
		var output="<tr><td>"+ lesson+" </td><td>"+title+"</td><td>"+explain+"</td><td>"+fileNm+"</td></tr>";
		$("#tab > tbody").append(output);	//더 명확한 selector의 사용
		
		var lesson=$("#lesson").val("");
		var title=$("#title").val("");
		var explain=$("#explain").val("");
		var fileNm=$("#fileNm").val("");
	});
	
	$("#delete").click(function(){
		//$("#tab").remove();
		//아이디가 tab인 대상의 tbody 가장 마지막 tr을 삭제
		$("#tab > tbody > tr:last").remove();
	});

/*     // 카테고리 클릭 시 이벤트 처리  이거슨 AJAX로 처리한다!!!
    $("#category1").click(function(){
        $("#division1").show(); // division1 표시
        $("#division2").hide(); // division2 숨김
    });

    $("#category2").click(function(){
        $("#division2").show(); // division2 표시
        $("#division1").hide(); // division1 숨김
    }); */
});//ready
</script>


</head>


<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="../common/instructor_sidebar.jsp"></jsp:include>
		<!-- Sidebar -->
	<!-- 		   <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            Sidebar - Brand
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="instructor_index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3" style="font-size: 20px;">AAk 강사메인</div>
            </a>

            Divider
            <hr class="sidebar-divider my-0">

            탭 메뉴
            <li class="nav-item active">
                <a class="nav-link" href="lectureManage/lectureList.do">  
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span style="font-size: 18px;">강의관리</span></a>
            </li>
            
             <li class="nav-item active">
                <a class="nav-link" href="lectureApply.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span style="font-size: 18px;">강의신청</span></a>
            </li>
            
            <li class="nav-item active">
                <a class="nav-link" href="qna/qnaList.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span style="font-size: 18px;">문의사항</span></a>
            </li>
            
            <li class="nav-item active">
                <a class="nav-link" href="studentList.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span style="font-size: 18px;">수강생 관리</span>
                    </a>
            </li>


        </ul> -->

	 <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
				<jsp:include page="../common/instructor_header.jsp"></jsp:include>
                <!-- Topbar -->
                
               <!--  <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    Sidebar Toggle (Topbar)
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    Topbar Search
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    </form>

                    Topbar Navbar
                    <ul class="navbar-nav ml-auto">

                        Nav Item - Search Dropdown (Visible Only XS)
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            Dropdown - Messages
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        Nav Item - Alerts
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                            </a>
                            Dropdown - Alerts
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>


                        <div class="topbar-divider d-none d-sm-block"></div>

                        Nav Item - User Information
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="img-profile rounded-circle"
                                    src="http://localhost/all_about_knowledge/resources/img/profile.jpg">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small" style="padding-left: 20px; font-size:15px">logout</span>
                            </a>
                            오른쪽 상단 이미지 클릭 메뉴
                            Dropdown - User Information
                            
                             <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                로그아웃 드랍박스
                                 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a> 
                            </div> 
                        </li>

                    </ul>

                </nav> -->

				<!-- 페이지 contents  -->
				  <div class="row">

				   
	<div class="container-fluid" style="width:70%; background-color:white;">
    <div class="card-body d-flex justify-content-center">
       <div class="dropdown me-2">
		  <a class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
		    카테고리
		  </a>
		  <ul class="dropdown-menu">
		    <li id="category1"><a class="dropdown-item" href="#">컴퓨터공학이론</a></li>
		    <li id="category2"><a class="dropdown-item" href="#">프로그래밍언어</a></li>
		  </ul>
	  </div>

        <div class="dropdown me-2">
            <a class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                과목명
            </a>
            
	           <ul class="dropdown-menu" id="division1"> <!-- 과목명 -->
	               <li><a class="dropdown-item" href="#">CS</a></li>
	           </ul>
	           <ul class="dropdown-menu" id="division2">
	               <li id="sub1"><a class="dropdown-item" href="#">Java</a></li>
	               <li id="sub2"><a class="dropdown-item" href="#">JavaScript</a></li>
	               <li id="sub3"><a class="dropdown-item" href="#">C</a></li>
	               <li id="sub4"><a class="dropdown-item" href="#">C++</a></li>
	           </ul>
               
        </div>
      </div>

	<div id="apply_info" class="d-flex flex-column mt-3"> <!-- apply_info -->
    <!-- 강의 상세내용 -->
    <div id="label_group" class="d-flex flex-row justify-content-center">
        <div id="lec_detail" style="flex-direction: column;">
            <!-- 강의명 -->
            <div class="form-group d-flex align-items-center mb-3">
                <label for="lectureName"  style="width: 150px; margin-right: 20px;">강의명</label>
                <input type="text" id="lectureName" class="form-control" placeholder="강의명을 입력해주세요" aria-describedby="lectureName">
            </div>
            <!-- 학습개요 -->
            <div class="form-group d-flex align-items-center mb-3">
                <label for="studyOverview"  style="width: 150px; margin-right: 20px;">학습개요</label>
                <input type="text" id="studyOverview" class="form-control" placeholder="학습개요를 입력해주세요" aria-describedby="studyOverview">
            </div>
            <!-- 학습목표 -->
            <div class="form-group d-flex align-items-center mb-3">
                <label for="studyGoal"  style="width: 150px; margin-right: 20px;">학습목표</label>
                <input type="text" id="studyGoal" class="form-control" placeholder="학습목표를 입력해주세요" aria-describedby="studyGoal">
            </div>
            <!-- 강의이미지 -->
            <div class="form-group d-flex align-items-center mb-3">
                <label for="lectureImage"  style="width: 150px; margin-right: 20px;">강의이미지</label>
                <input type="file" id="lectureImage" class="form-control" aria-describedby="lectureImage">
            </div>
            <!-- 총 차시 수 -->
            <div class="form-group d-flex align-items-center mb-3">
                <label for="totalSessions" style="width: 150px; margin-right: 20px;">총 차시 수</label>
                <input type="text" id="totalSessions" class="form-control" value="8개" readonly aria-describedby="totalSessions">
            </div>
            <!-- 개설일자 -->
            <div class="form-group d-flex align-items-center mb-3">
                <label for="openDate"  style="width: 150px; margin-right: 20px;">개설일자</label>
                <input type="datetime-local" id="openDate" class="form-control" aria-describedby="openDate">
            </div>
            
    <!-- 강의 차시 -->
    <label style=" margin-top:10px; margin-bottom: 20px;">강의목차</label>
    
            <!-- 차시 -->
            <div class="form-group d-flex align-items-center mb-3">
                <label for="lesson" style="width: 150px; margin-right: 20px;">차시</label>
                <input type="text" id="lesson" class="form-control" placeholder="차시" aria-describedby="lesson">
            </div>
            <!-- 제목 -->
            <div class="form-group d-flex align-items-center mb-3">
                <label for="title"  style="width: 150px; margin-right: 20px;">제목</label>
                <input type="text" id="title" class="form-control" placeholder="제목" aria-describedby="title">
            </div>
            <!-- 설명 -->
            <div class="form-group d-flex align-items-center mb-3">
                <label for="explain"  style="width: 150px; margin-right: 20px;">설명</label>
                <input type="text" id="explain" class="form-control" placeholder="설명" aria-describedby="explain">
            </div>
            <!-- 파일 -->
            <div class="form-group d-flex align-items-center mb-3">
                <label for="fileNm"  style="width: 150px; margin-right: 20px;">파일</label>
                <input type="file" id="fileNm" class="form-control" aria-describedby="fileNm">
            </div>
            <!-- 버튼 -->
            <div style="text-align: center;">
                <input type="button" value="추가" class="btn btn-dark btn-sm ml-2" id="add">
                <input type="button" value="삭제" class="btn btn-light btn-sm ml-2" id="delete">
            </div>
        </div>
	<div>
	    <table id="tab" class="table" style="margin-left:25px">
	        <thead>
	            <tr>
	                <th scope="col" style="width:50px">차시</th>
	                <th scope="col" style="width:250px">제목</th>
	                <th scope="col" style="width:300px">설명</th>
	                <th scope="col" style="width:150px">첨부파일</th>
	            </tr>
	        </thead>
	        <tbody>
	        </tbody>
	        
	    </table>
	</div>
    </div>
    <div style="text-align: center; margin-top: 40px; margin-bottom:20px;">
        <input type="submit" value="신청" class="btn btn-dark btn-sm" id="applyBtn">
        <input type="button" value="취소" class="btn btn-light btn-sm" id="cancelBtn">
    </div>
</div>


</div>
		<jsp:include page="../common/instructor_footer.jsp"></jsp:include>
			<!-- 	<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; all about knowledge 2024</span>
						</div>
					</div>
				</footer> -->
	
	
	<!-- Bootstrap core JavaScript-->
    <script src="http://localhost/all_about_knowledge/resources/vendor/jquery/jquery.min.js"></script>
    <script src="http://localhost/all_about_knowledge/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="http://localhost/all_about_knowledge/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="http://localhost/all_about_knowledge/resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="http://localhost/all_about_knowledge/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="http://localhost/all_about_knowledge/resources/js/demo/chart-area-demo.js"></script>
    <script src="http://localhost/all_about_knowledge/resources/js/demo/chart-pie-demo.js"></script>
	
</body>
</html>