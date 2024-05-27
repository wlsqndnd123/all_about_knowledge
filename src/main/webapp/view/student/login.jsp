<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AAK - All About Knowledge</title>
<link href="css/login.css" rel="stylesheet">
<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon.png">
</head>
<body>
<div class="container">
    <div class="heading">로그인</div>
    <form action="" class="form">
      <input required="" class="input" type="text" name="userId" id="userId" placeholder="아이디">
      <input required="" class="input" type="password" name="password" id="password" placeholder="비밀번호">
      <span class="forgot-id"><a href="#">아이디 찾기</a></span>
      <span class="forgot-password"><a href="#">비밀번호 찾기</a></span>
      <input class="login-button" type="submit" value="로그인">
      
    </form>
    <div class="social-account-container">
        <input class="join-button" type="button" value="회원가입">
      </div>
  </div>
</body>
</html>