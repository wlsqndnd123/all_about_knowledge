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
    <title>AAK</title>

    <!-- Custom fonts for this template-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="http://localhost/all_about_knowledge/resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>


<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
	<jsp:include page="../common/instructor_sidebar.jsp"></jsp:include>
		<!-- Sidebar -->
	  <!--  <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

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
                <a class="nav-link" href="lectureManage/lectureApply.do">
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
	<!-- </div> -->

	 <div id="content-wrapper">

            <!-- Main Content -->
            <div id="content">
			<jsp:include page="../common/instructor_header.jsp"></jsp:include>
                <!-- Topbar -->
<!--                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    Sidebar Toggle (Topbar)
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    Topbar Search
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
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
                                Counter - Alerts
                                <span class="badge badge-danger badge-counter">3+</span>
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

                        Nav Item - Messages
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                Counter - Messages
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            Dropdown - Messages
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="/img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler Â· 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="/img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun Â· 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="/img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez Â· 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog Â· 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
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
                            Dropdown - User Information
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div> 
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                </a>
                            </div>
                        </li>

                    </ul>


                </nav>-->  
                

				<!-- 강의관리 리스트 시작 -->
				<div class="container-fluid" style="width:70%; background-color:white;">
					<div class="card-body  d-flex flex-col" style="padding-left: 220px;">
						<!-- 검색바 -->
					<!-- 	<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								data-bs-toggle="dropdown" aria-expanded="false">승인여부</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">승인</a></li>
								<li><a class="dropdown-item" href="#">반려</a></li>
								<li><a class="dropdown-item" href="#">대기중</a></li>
							</ul>
						</div>

						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								data-bs-toggle="dropdown" aria-expanded="false">카테고리</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">컴퓨터공학이론</a></li>
								<li><a class="dropdown-item" href="#">프로그래밍언어</a></li>
							</ul>
						</div> -->

						<div class="col">
							<div class="input-group mb-2" >
								<input type="text" class="form-control" style="max-width: 350px;" > 
								<input type="button" class="input-group-text" value="🔍">
							</div>

						</div>
					</div>
					<div class="container-fluid">
						<!-- 리스트 -->
						<table id="tab" class="table table-hover" class="d-flex flex-col">
							<thead>
								<tr>
									<th scope="col">과목명</th>
									<th scope="col">반려사유</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">java 왕기초 4주 단기완성</a></th>
									<td>반려사유1</td>
								</tr>
								<tr>
									<th scope="row">운영체제의 종류</th>
									<td>반려사유2</td>
								</tr>

							</tbody>
						</table>
					</div>
					<div class="container-fluid">
						<!-- 페이지네이션 -->
						<div id="pn" class="d-flex flex-col justify-content-center">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
</div>
		<jsp:include page="../common/instructor_footer.jsp"></jsp:include>
		
	
	
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