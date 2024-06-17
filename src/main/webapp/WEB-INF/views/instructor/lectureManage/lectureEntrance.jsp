<!DOCTYPE html>
<html>

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible">
<!-- content="IE=edge" -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>AAK</title>

<!-- Custom fonts for this template-->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="http://localhost/all_about_knowledge/resources/css/sb-admin-2.min.css"
	rel="stylesheet">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-LJ3XOMiYvVRy4X4H6YphqQLzzsUz1+cPTnWBXOpacAdMQuPBM0dAVPvcjFpzeFnC"
	crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Um/z5h4jUjzfcVklr/dWUp5QL7fWHazAqGqJSK1ovRPqVxB5LQcbxV/tdxJmpt3V"
	crossorigin="anonymous"></script>


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
		
		var output=`<tr><td>${lesson} </td><td>${title}</td><td>${explain}</td><td>${fileNm}</td></tr>`;
		//$("#tab").append(output);
		$("#tab > tbody").append(output);	//더 명확한 selector의 사용
	});
	
	$("#delete").click(function(){
		//$("#tab").remove();
		//아이디가 tab인 대상의 tbody 가장 마지막 tr을 삭제
		$("#tab > tbody > tr:last").remove();
	});

    // 카테고리 클릭 시 이벤트 처리
    $("#category1").click(function(){
        $("#division1").show(); // division1 표시
        $("#division2").hide(); // division2 숨김
    });

    $("#category2").click(function(){
        $("#division1").hide(); // division1 숨김
        $("#division2").show(); // division2 표시
    });
});
});//ready
</script>


</head>


<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="instructor_index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">AAk 강사메인</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- 탭 메뉴 -->
			<li class="nav-item active"><a class="nav-link"
				href="lectureManage/lectureList.do"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>강의관리</span></a></li>

			<li class="nav-item active"><a class="nav-link"
				href="lectureManage/lectureApply.do"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>강의신청</span></a></li>

			<li class="nav-item active"><a class="nav-link"
				href="qna/qnaList.do"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>문의사항</span></a></li>

			<li class="nav-item active"><a class="nav-link"
				href="studentList.do"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>수강생 관리</span>
			</a></li>


		</ul>

		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>


						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <img
								class="img-profile rounded-circle"
								src="http://localhost/all_about_knowledge/resources/img/profile.jpg">
								<span class="mr-2 d-none d-lg-inline text-gray-600 small">logout</span>
						</a> <!-- 오른쪽 상단 이미지 클릭 메뉴 --> <!-- Dropdown - User Information --> <!--  <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                로그아웃 드랍박스
                                 <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a> 
                            </div> --></li>

					</ul>

				</nav>

				<!-- 페이지 contents  -->
				<div class="row">

					<div class="col-xl-8 col-lg-7">
						<div class="card shadow mb-4">

							<div class="container-fluid">

								<div id="apply_info" class="d-flex flex-column mt-3">
									<!-- apply_info -->
									<!-- 강의 상세내용 -->
									<div id="label_group"
										class="d-flex flex-row justify-content-center" style="width=100%">

										<div class="mb-3 d-flex align-items-center"
											style="width: 100%">
											<div>
												<img src="http://localhost/all_about_knowledge/resources/img/%EA%B0%95%EC%9D%98%EC%8D%B8%EB%84%A4%EC%9D%BC.png">
											</div>
											<div id="lec_info" class="d-flex flex-column "
												style="width: 50%">
												<div class="mb-2">
													<label class="form-label">java 왕기초 4주 단기완성</label> <a
														href="lectureEntrance.do"></a>
												</div>
												<div class="mb-2">
													<label class="form-label">총 강의시간 | 800분</label> 
												</div>
												<div>
													<label class="form-label">총 강의 수 | 20개</label> 
												</div>
												<div>
													<label class="form-label">학습개요</label> <br>
													<label class="form-label">학습개요입니다라람쥐</label> 
												</div>
												<div>
													<label class="form-label">학습목표</label> <br>
													<label class="form-label">학습목표입니다</label> 
												</div>
											</div>
										</div>

									</div>

									<!-- 강의 차시 -->
									<input type="text" readonly class="form-control-plaintext"
										value="강의목차" />
									<table id="tab" class="table">
										<thead>
											<tr>
												<th scope="col">차시</th>
												<th scope="col">제목</th>
												<th scope="col" colspan="2">설명</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">0</th>
												<td>강의소개</td>
												<td colspan="2">설명0</td>
											</tr>
											<tr>
												<th scope="row">1</th>
												<td>클래스와 데이터</td>
												<td colspan="2">설명1</td>
											</tr>
											<tr>
												<th scope="row">2</th>
												<td>기본형과 참조형</td>
												<td colspan="2">설명2</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>객체지향 프로그래밍</td>
												<td colspan="2">설명3</td>
											</tr>
											<tr>
												<th scope="row">4</th>
												<td>생성자</td>
												<td colspan="2">설명4</td>
											</tr>
											<tr>
												<th scope="row">5</th>
												<td>패키지</td>
												<td colspan="2">설명5</td>
											</tr>

											<tr>
												<th scope="row">6</th>
												<td>접근제어자</td>
												<td colspan="2">설명6</td>
											</tr>

											<tr>
												<th scope="row">7</th>
												<td>자바 메모리 구조와 static</td>
												<td colspan="2">설명7</td>
											</tr>

											<tr>
												<th scope="row">8</th>
												<td>final</td>
												<td colspan="2">설명8</td>
											</tr>

										</tbody>
									</table>

								</div>

							</div>
						</div>

						<footer class="sticky-footer bg-white">
							<div class="container my-auto">
								<div class="copyright text-center my-auto">
									<span>Copyright &copy; all about knowledge 2024</span>
								</div>
							</div>
						</footer>


						<!-- Bootstrap core JavaScript-->
						<script
							src="http://localhost/all_about_knowledge/resources/vendor/jquery/jquery.min.js"></script>
						<script
							src="http://localhost/all_about_knowledge/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

						<!-- Core plugin JavaScript-->
						<script
							src="http://localhost/all_about_knowledge/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

						<!-- Custom scripts for all pages-->
						<script
							src="http://localhost/all_about_knowledge/resources/js/sb-admin-2.min.js"></script>

						<!-- Page level plugins -->
						<script
							src="http://localhost/all_about_knowledge/resources/vendor/chart.js/Chart.min.js"></script>

						<!-- Page level custom scripts -->
						<script
							src="http://localhost/all_about_knowledge/resources/js/demo/chart-area-demo.js"></script>
						<script
							src="http://localhost/all_about_knowledge/resources/js/demo/chart-pie-demo.js"></script>
</body>
</html>