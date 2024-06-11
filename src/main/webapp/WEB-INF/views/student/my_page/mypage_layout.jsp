<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/all_about_knowledge/front/student/css/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>
<style type = "text/css">
</style>
<script type = "text/javascript">
	$(function() {

	}); // ready
</script>
</head>
<body class="mypage">
<!-- 사이드 네비게이션 바 -->
<aside class="side_nav ui vertical menu">
  <div class="item">
    <div class="header">로고 이미지 자리</div>
  </div>
  <div class="item">
    <div class="header nav_header_font">나의 강의실</div>
    <div class="menu">
      <a class="item nav_font"><img src="/all_about_knowledge/front/student/icon/dashboard.svg" class="nav_svg"/>대시보드</a>
      <a class="item nav_font"><img src="/all_about_knowledge/front/student/icon/mylecture.svg" class="nav_svg"/>나의강의</a>
      <a class="item nav_font"><img src="/all_about_knowledge/front/student/icon/interest.svg" class="nav_svg"/>관심강의</a>
      <a class="item nav_font"><img src="/all_about_knowledge/front/student/icon/question.svg" class="nav_svg"/>나의문의</a>
    </div>
  </div>
  <div class="item">
    <div class="header nav_header_font">개인정보관리</div>
    <div class="menu">
      <a class="item nav_font"><img src="/all_about_knowledge/front/student/icon/my_info.svg" class="nav_svg"/>개인정보수정</a>
      <a class="item nav_font"><img src="/all_about_knowledge/front/student/icon/exit.svg" class="nav_svg"/>탈퇴</a>
    </div>
  </div>
  
<div class="item">
  <div class="header">로그인ID</div>
  <div class="menu">
    <a class="item">이메일주소</a>
  </div>
  </div>
  
</aside>

<!-- 탑 네비게이션 바 -->
<nav class="top_nav ui stackable menu">
  <div class="right menu">
  <a class="item">개설강좌</a>
  <a class="item">이용안내</a>
  <a class="item">로그아웃</a>
  </div>
</nav>

<!-- 컨텐츠 영역 -->
<article class="my_article">
content 영역
</article>

</body>
</html>