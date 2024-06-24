<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AAK - All About Knowledge</title>

<!-- <link rel="icon" type="image/svg+xml" href="/favicon.svg">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon.png"> -->
        
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="http://localhost/all_about_knowledge/front/student/css/login_join.css" rel="stylesheet">

<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

<script src="http://localhost/all_about_knowledge/front/student/js/login.js"></script>
</head>
<body>
<div class="container">
   <section id="formHolder">

      <div class="row">

         <!-- Brand Box -->
         <div class="col-sm-6 brand">
            <img src="/all_about_knowledge/favicon.png" class="logo" alt="">
            <img src="http://localhost/all_about_knowledge/front/student/icon/title.svg" class="logo-title" alt="">
            
            <div class="heading">
               <h2>AAK</h2>
               <p>All About Knowledge</p>
            </div>

            <div class="success-msg">
               <p> 회원 가입이 성공적으로 완료되었습니다 </p>
               <a href="#" class="profile">마이페이지</a>
            </div>
         </div>


         <!-- Form Box -->
         <div class="col-sm-6 form">

            <!-- Login Form -->
            <div class="login form-peice">
               <form class="login-form" action="#" method="post">
                  <div class="form-group">
                     <label for="userId">아이디</label>
                     <input type="text" name="userId" id="userId" class="userId" required>
                  </div>

                  <div class="form-group">
                     <label for="loginPassword">비밀번호</label>
                     <input type="password" name="loginPassword" id="loginPassword" required>
                  </div>

                  <div class="CTA">
                     <input type="submit" value="로그인">
                     <a href="#" class="switch">회원가입</a>
                     <a href="#" class="switch-a">ID찾기</a>
                     <a href="#" class="switch-a">비밀번호찾기</a>
                  </div>
               </form>
            </div><!-- End Login Form -->


            <!-- Signup Form -->
            <div class="signup form-peice switched">
               <form class="signup-form" action="/join.do" method="post">

                  <div class="form-group">
                     <label for="userId">아이디</label>
                     <input type="text" name="userId" id="userId" class="userId">
                     <span class="error"></span>
                  </div>
                  
                  <div class="form-group">
                     <label for="name">이름</label>
                     <input type="text" name="username" id="name" class="name">
                     <span class="error"></span>
                  </div>
                  
                  <div class="form-group">
                     <label for="birth">생년월일</label>
                     <input type="text" name="birth" id="birth" class="birth">
                     <span class="error"></span>
                  </div>

                  <div class="form-group">
                     <label for="password">비밀번호</label>
                     <input type="password" name="password" id="password" class="pass">
                     <span class="error"></span>
                  </div>

                  <div class="form-group">
                     <label for="passwordCon">비밀번호 확인</label>
                     <input type="password" name="passwordCon" id="passwordCon" class="passConfirm">
                     <span class="error"></span>
                  </div>
                  
                  <div class="form-group">
                     <label for="phone">휴대전화</label>
                     <input type="tel" name="phone" id="phone">
                  </div>
                  
                  <div class="form-group">
                     <label for="email">이메일</label>
                     <input type="email" name="emailAddress" id="email" class="email">
                     <span class="error"></span>
                  </div>

                  <div class="CTA">
                     <input type="submit" value="회원가입" id="submit">
                     <a href="#" class="switch">로그인</a>
                  </div>
               </form>
            </div><!-- End Signup Form -->
         </div>
      </div>
   </section>
</div>
</body>
</html>