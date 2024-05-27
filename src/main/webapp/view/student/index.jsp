<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>AAK - All About Knowledge</title>

        <!-- CSS FILES -->
		<link rel="icon" type="image/svg+xml" href="/favicon.svg">
		<link rel="icon" type="image/png" sizes="32x32" href="/favicon.png">
                
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">
        <link href="css/tooplate-clean-work.css" rel="stylesheet">

    </head>
    
    <body>
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src="/favicon.svg" class="logo img-fluid" alt="">
                    <span class="ms-2"><img src="http://localhost/view/student/images/title.svg" style="width:200px; height:100px"></span>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link active" href="index.jsp">Home</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#section_5" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">나의 강의실</a>

                            <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">나의 강의</a></li>
                                <li><a class="dropdown-item" href="#">관심 강의</a></li>
                                <li><a class="dropdown-item" href="#">정보변경</a></li>
                                <li><a class="dropdown-item" href="#">내 문의</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#section_5" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">개설강좌</a>

                            <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                <li><a class="dropdown-item" href="#"><strong>CS 이론</strong></a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#"><strong>프로그래밍언어</strong></a></li>
                                <li><a class="dropdown-item" href="#">JAVA</a></li>
                                <li><a class="dropdown-item" href="#">Java Script</a></li>
                                <li><a class="dropdown-item" href="#">Python</a></li>
                                <li><a class="dropdown-item" href="#">C</a></li>
                                <li><a class="dropdown-item" href="#">C#</a></li>
                                <li><a class="dropdown-item" href="#">C++</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#section_5" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">이용안내</a>

                            <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">공지사항</a></li>
                                <li><a class="dropdown-item" href="#">자주묻는질문</a></li>
                                <li><a class="dropdown-item" href="#">이용약관</a></li>
                                <li><a class="dropdown-item" href="#">개인정보처리방침</a></li>
                            </ul>
                        </li>

                        <li class="nav-item ms-3">
                            <a class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn" href="#">로그인</a>
                            <a class="nav-link custom-btn custom-border-btn custom-btn-bg-white btn" href="#">회원가입</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main>

            <section class="hero-section hero-section-full-height d-flex justify-content-center align-items-center">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">

                        <div class="col-lg-7 col-12 text-center mx-auto">
                            <h1 class="cd-headline rotate-1 text-white mb-4 pb-2">
                                <span> 이것이 </span>
                                <span class="cd-words-wrapper">
                                    <b class="is-visible"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Java </b>
                                    <b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C </b>
                                    <b>&nbsp;JavaScript</b>
                                </span>
                                <span> &nbsp;&nbsp;인가? </span>
                            </h1>

                            <a class="custom-btn btn button button--atlas smoothscroll me-3" href="#intro-section">
                                <span>강의소개</span>

                                <div class="marquee" aria-hidden="true">
                                    <div class="marquee__inner">
                                        <span>이</span>
                                        <span>것</span>
                                        <span>이</span>
                                        <span>개</span>
                                        <span>인</span>
                                        <span>가?</span>
                                    </div>
                                </div>
                            </a>

                            <a class="custom-btn custom-border-btn custom-btn-bg-white btn button button--pan smoothscroll" href="#services-section">
                                <span>추천 강의</span>
                            </a>
                        </div>

                    </div>
                </div>

                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffffff" fill-opacity="1" d="M0,224L40,229.3C80,235,160,245,240,250.7C320,256,400,256,480,240C560,224,640,192,720,176C800,160,880,160,960,138.7C1040,117,1120,75,1200,80C1280,85,1360,139,1400,165.3L1440,192L1440,320L1400,320C1360,320,1280,320,1200,320C1120,320,1040,320,960,320C880,320,800,320,720,320C640,320,560,320,480,320C400,320,320,320,240,320C160,320,80,320,40,320L0,320Z"></path></svg>
            </section>


            <section class="intro-section" id="intro-section">
                <div class="container">
                    <div class="row justify-content-lg-center align-items-center">

                        <div class="col-lg-6 col-12">
                            <h2 class="mb-4">시그니처 시리즈<br> 이것이 [프로그래밍] 인가?</h2>

                            <p>
                            <a rel="nofollow" href="#" target="_blank">이것이 자바인가?</a> 그렇다 이것이 자바이다<br/>
                            <a rel="nofollow" href="#" target="_blank">이것이 C인가?</a> 그렇다 이것이 C이다<br/>
                            <a rel="nofollow" href="#" target="_blank">이것이 자바스크립트 인가?</a> 그렇다 이것이 C이다<br/></p>
                            <p> 이것은 <strong>진수현 유니버스</strong> 모든 강의의 시작과 끝은 진수현이다.</p>
                        </div>

                        <div class="col-lg-6 col-12 custom-block-wrap">
                            <img src="images/is_this.png" class="img-fluid">

                            <div class="custom-block d-flex flex-column">
                                <h6 class="text-white mb-3">디자인? <br> 도움!</h6>

                                <p class="d-flex mb-0">
                                    <i class="bi-telephone-fill custom-icon me-2"></i>

                                    <a href="#">
                                        02-1234-5678
                                    </a>
                                </p>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <section class="services-section section-padding section-bg" id="services-section">                
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12">
                            <h2 class="mb-4">인기 강의</h2>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="services-thumb">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5 col-12">
                                        <div class="services-image-wrap">
                                            <a href="services-detail.jsp">
                                                <img src="images/services/ui.jpg" class="services-image img-fluid" alt="">
                                                <img src="images/services/person-taking-care-office.jpg" class="services-image services-image-hover img-fluid" alt="">

                                                <div class="services-icon-wrap">
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <p class="text-white mb-0">
                                                            <i class="bi-clock-fill me-2"></i>
                                                            500 hrs
                                                        </p>
                                                    </div>                                                    
                                                </div>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7 col-12 d-flex align-items-center">
                                        <div class="services-info mt-4 mt-lg-0 mt-md-0">
                                            <h4 class="services-title mb-1 mb-lg-2">
                                                <a class="services-title-link" href="#">이것이 디자인인가?</a>
                                            </h4>

                                            <p>지금부터 시작하는 디자인강의. 제발... 진수현 김일신 필수 수강</p>

                                            <div class="d-flex flex-wrap align-items-center">

                                                <a href="services-detail.jsp" class="custom-btn btn button button--atlas mt-2 ms-auto">
                                                    <span>상세보기</span>

                                                    <div class="marquee" aria-hidden="true">
                                                        <div class="marquee__inner">
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="services-thumb">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5 col-12">
                                        <div class="services-image-wrap">
                                            <a href="services-detail.jsp">
                                                <img src="images/services/java.jpg" class="services-image img-fluid" alt="">
                                                <img src="images/services/woman-holding-rag-detergent-cleaning-cooker.jpg" class="services-image services-image-hover img-fluid" alt="">

                                                <div class="services-icon-wrap">
                                                    <div class="d-flex justify-content-between align-items-center">

                                                        <p class="text-white mb-0">
                                                            <i class="bi-clock-fill me-2"></i>
                                                            40 hrs
                                                        </p>
                                                    </div>                                                    
                                                </div>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7 col-12 d-flex align-items-center">
                                        <div class="services-info mt-4 mt-lg-0 mt-md-0">
                                            <h4 class="services-title mb-1 mb-lg-2">
                                                <a class="services-title-link" href="services-detail.jsp">이것이 자바인가?</a>
                                            </h4>

                                            <p>자바는 벌써 2년째 수업 중입니다. 하지만 아는 게 없다면 기초부터 다시 시작합시다.</p>

                                            <div class="d-flex flex-wrap align-items-center">

                                                <a href="services-detail.jsp" class="custom-btn btn button button--atlas mt-2 ms-auto">
                                                    <span>상세보기</span>

                                                    <div class="marquee" aria-hidden="true">
                                                        <div class="marquee__inner">
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="services-thumb mb-lg-0">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5 col-12">
                                        <div class="services-image-wrap">
                                            <a href="services-detail.jsp">
                                                <img src="images/services/c.jpg" class="services-image img-fluid" alt="">
                                                <img src="images/services/man-polishing-car-inside.jpg" class="services-image services-image-hover img-fluid" alt="">

                                                <div class="services-icon-wrap">
                                                    <div class="d-flex justify-content-between align-items-center">

                                                        <p class="text-white mb-0">
                                                            <i class="bi-clock-fill me-2"></i>
                                                            2 hrs
                                                        </p>
                                                    </div>                                                    
                                                </div>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7 col-12 d-flex align-items-center">
                                        <div class="services-info mt-4 mt-lg-0 mt-md-0">
                                            <h4 class="services-title mb-1 mb-lg-2">
                                                <a class="services-title-link" href="services-detail.jsp">이것이 C언어 인가?</a>
                                            </h4>

                                            <p>C언어는 정보처리기사 할 때 열심히 했습니다. java를 틀리고 c를 다 맞은 것 같아요. 저런...</p>

                                            <div class="d-flex flex-wrap align-items-center">

                                                <a href="services-detail.jsp" class="custom-btn btn button button--atlas mt-2 ms-auto">
                                                    <span>상세보기</span>

                                                    <div class="marquee" aria-hidden="true">
                                                        <div class="marquee__inner">
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="services-thumb mb-lg-0">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5 col-12">
                                        <div class="services-image-wrap">
                                            <a href="services-detail.jsp">
                                                <img src="images/services/js.jpg" class="services-image img-fluid" alt="">
                                                <img src="images/services/close-up-mop-cleaning-industrial-plant-floor.jpg" class="services-image services-image-hover img-fluid" alt="">

                                                <div class="services-icon-wrap">
                                                    <div class="d-flex justify-content-between align-items-center">

                                                        <p class="text-white mb-0">
                                                            <i class="bi-clock-fill me-2"></i>
                                                            300 hrs
                                                        </p>
                                                    </div>                                                    
                                                </div>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7 col-12 d-flex align-items-center">
                                        <div class="services-info mt-4 mt-lg-0 mt-md-0">
                                            <h4 class="services-title mb-1 mb-lg-2">
                                                <a class="services-title-link" href="services-detail.jsp">이것이 자바스크립트인가?</a>
                                            </h4>

                                            <p>이것이 자바 스크립트인지는 전혀 모르겠고 이 페이지 스크립트 처리 어떻게 하죠?</p>

                                            <div class="d-flex flex-wrap align-items-center">

                                                <a href="services-detail.jsp" class="custom-btn btn button button--atlas mt-2 ms-auto">
                                                    <span>상세보기</span>

                                                    <div class="marquee" aria-hidden="true">
                                                        <div class="marquee__inner">
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                            <span>상세보기</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

        </main>


        <footer class="site-footer">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12 d-flex align-items-center mb-4 pb-2">
		                <a class="navbar-brand" href="index.jsp">
		                    <img src="/favicon.svg" class="logo img-fluid" alt="">
		                    <span class="ms-2"><img src="http://localhost/view/student/images/title.svg" style="width:200px; height:100px"></span>
		                </a>
                    </div>

                    <div class="col-lg-5 col-12 mb-4 mb-lg-0">
                        <h5 class="site-footer-title mb-3">AAK</h5>

                        <ul class="footer-menu">
                            <li class="footer-menu-item">
                                <a href="#" class="footer-menu-link">
                                    <i class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
                                    공지사항
                                </a>
                            </li>

                            <li class="footer-menu-item">
                                <a href="#" class="footer-menu-link">
                                    <i class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
                                    CS 강의
                                </a>
                            </li>

                            <li class="footer-menu-item">
                                <a href="#" class="footer-menu-link">
                                    <i class="bi-chevron-double-right footer-menu-link-icon me-2"></i>
                                    프로그래밍 언어 강의
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0 mb-md-0">
                        <h5 class="site-footer-title mb-3">회사소개</h5>

                        <p class="text-white d-flex mt-3 mb-2">
                            <i class="bi-geo-alt-fill me-2"></i>
                            서울특별시 어딘가
                        </p>

                        <p class="text-white d-flex mb-2">
                            <i class="bi-telephone-fill me-2"></i>

                            <a href="tel: 02-1234-5678" class="site-footer-link">
                                02-1234-5678
                            </a>
                        </p>

                        <p class="text-white d-flex">
                            <i class="bi-envelope-fill me-2"></i>

                            <a href="mailto:info@aak.sist.co.kr" class="site-footer-link">
                                info@aak.sist.co.kr
                            </a>
                        </p>
                    </div>

                    <div class="col-lg-3 col-md-6 col-6 mt-3 mt-lg-0 mt-md-0">
                        <div class="featured-block">
                            <h5 class="text-white mb-3">고객센터</h5>

                            <strong class="d-block text-white mb-1">Mon - Fri</strong>

                            <p class="text-white mb-3">9:00 AM - 6:00 PM</p>

                            <strong class="d-block text-white mb-1">Sat</strong>

                            <p class="text-white mb-0">9:00 AM - 1:00 PM</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-footer-bottom">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12">
                            <p class="copyright-text mb-0">Copyright Â© 2024 All About Knowledge Co., Ltd.</p>
                        </div>
                        
                        <div class="col-lg-6 col-12 text-end">
                            <p class="copyright-text mb-0">
                            // Designed by <a href="#" target="_parent">sist</a> //</p>
                        </div>
                        
                    </div>
                </div>
            </div>
        </footer>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/counter.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/init.js"></script>
        <script src="js/modernizr.js"></script>
        <script src="js/animated-headline.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>
