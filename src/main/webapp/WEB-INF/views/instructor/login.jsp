<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon"
	href="http://192.168.10.225/spring_mvc/common/favicon.ico" />
<!--bootstrap 시작-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<link rel="stylesheet"
	href="http://192.168.10.225/spring_mvc/common/css/main.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="http://192.168.10.225/spring_mvc/common/css/board.css"
	type="text/css" media="all" />

<!--jQuery CDN 시작-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuery CDN 끝-->

<style type="text/css">
	.divider:after, .divider:before {
		content: "";
		flex: 1;
		height: 1px;
		background: #eee;
	}
	
	.h-custom {
		height: calc(100% - 73px);
	}
	
	@media ( max-width : 450px) {
		.h-custom {
			height: 100%;
		}
	}
</style>
<script type="text/javascript">
	$(function() {
		$("#btnLogin").click(function(){
			$("#loginForm").submit()
		});
	});//ready
</script>
</head>
<body>
	<div>
		<section class="vh-100">
			<div class="container-fluid h-custom">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-md-9 col-lg-6 col-xl-5">
						<img
							src="http://localhost/all_about_knowledge/resources/img/%EB%A1%9C%EA%B7%B8%EC%9D%B8%EC%9D%B4%EB%AF%B8%EC%A7%80.png"
							class="img-fluid" alt="Sample image">
					</div>
					<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
						<form action="http://localhost/all_about_knowledge/instructor/loginProcess.do" method="post" id="loginForm">
							<!-- <div
								class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
								<p class="lead fw-normal mb-0 me-3">Sign in with</p>
								<button type="button" data-mdb-button-init data-mdb-ripple-init
									class="btn btn-primary btn-floating mx-1">
									<i class="fab fa-facebook-f"></i>
								</button>

								<button type="button" data-mdb-button-init data-mdb-ripple-init
									class="btn btn-primary btn-floating mx-1">
									<i class="fab fa-twitter"></i>
								</button>

								<button type="button" data-mdb-button-init data-mdb-ripple-init
									class="btn btn-primary btn-floating mx-1">
									<i class="fab fa-linkedin-in"></i>
								</button>
							</div> -->
							
							<!-- 
							<div class="divider d-flex align-items-center my-4">
								<p class="text-center fw-bold mx-3 mb-0">Or</p>
							</div> -->

							<!-- Email input -->
							<div data-mdb-input-init class="form-outline mb-4">
								<input type="text" id="form3Example3" name="id"
									class="form-control form-control-lg"
									placeholder="Enter a valid email address" /> <label
									class="form-label" for="form3Example3">아이디를 입력해주세요</label>
							</div>

							<!-- Password input -->
							<div data-mdb-input-init class="form-outline mb-3">
								<input type="password" id="form3Example4" name="password"
									class="form-control form-control-lg"
									placeholder="Enter password" /> <label class="form-label"
									for="form3Example4">비밀번호를 입력해주세요</label>
							</div>

							<div class="d-flex justify-content-between align-items-center">
								<!-- Checkbox -->
								<!-- <div class="form-check mb-0">
									<input class="form-check-input me-2" type="checkbox" value=""
										id="form2Example3" /> <label class="form-check-label"
										for="form2Example3"> Remember me </label>
								</div> --> <!-- http://localhost/all_about_knowledge/instructor/findPw.do -->
								<form action="http://localhost/all_about_knowledge/instructor/findPw.do" method="post" id="findPwBtn">
								Forgot password?
								</form>
							</div>

							<div class="text-center text-lg-start mt-4 pt-2">
								<input type="button" data-mdb-button-init data-mdb-ripple-init
									class="btn btn-primary btn-lg" id="btnLogin" 
									style="padding-left: 2.5rem; padding-right: 2.5rem;" value="Login"/>
									
								<!-- <p class="small fw-bold mt-2 pt-1 mb-0">
									Don't have an account? <a href="#!" class="link-danger">Register</a>
								</p> -->
							</div>

						</form>
					</div>
				</div>
			</div>
			<div
				class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
				<!-- Copyright -->
				<div class="text-white mb-3 mb-md-0">Copyright © 2020. All
					rights reserved.</div>
				<!-- Copyright -->

			</div>
		</section>
	</div>
</body>
</html>