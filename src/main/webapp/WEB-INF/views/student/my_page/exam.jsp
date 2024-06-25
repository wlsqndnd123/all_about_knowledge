<!-- 
Desc : 사용자(학생)의 마이페이지 시험 응시 화면
작성자 : 고한별
작성일 : 2024.06.21
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
    info = "" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의강의 - 시험</title>
<link rel="icon" href="/all_about_knowledge/favicon.png">
<link rel="stylesheet" type="text/css" href="/all_about_knowledge/front/student/css/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>
<style type = "text/css">
</style>
<script type="text/javascript">
	$(function() {

	}); // ready
</script>
</head>
<body class="mypage">
<!-- 사이드 네비게이션 바 -->
<jsp:include page="mypage_side_nav.jsp"></jsp:include>

<!-- 탑 네비게이션 바 -->
<jsp:include page="mypage_top_nav.jsp"></jsp:include>

<!-- 컨텐츠 영역 -->
<article class="my_article">
<div class="mypage_content_div">
	<!-- breadcrumb 표시 -->
	<div class="ui small breadcrumb div_margin">
	  <a class="section" href="${pageContext.request.contextPath}/mypage/mypage_home.do">나의강의실</a>
	  <i class="right chevron icon divider"></i>
	  <a class="section" href="${pageContext.request.contextPath}/mypage/my_lecture.do">나의강의</a>
	  <i class="right chevron icon divider"></i>
	  <div class="active section">시험</div>
	</div>
	
	<div class="ui segment div_margin">
	<div class="ui form">
  <div class="grouped fields">
    <label>1. 다음 중 가장 집에 가고 싶은 사람은?</label>
    <div class="field">
      <div class="ui radio checkbox">
        <input type="radio" name="example1" checked="checked">
        <label>이주희</label>
      </div>
    </div>
    <div class="field">
      <div class="ui radio checkbox">
        <input type="radio" name="example1">
        <label>강아지똥</label>
      </div>
    </div>
    <div class="field">
      <div class="ui radio checkbox">
        <input type="radio" name="example1">
        <label>회장님</label>
      </div>
    </div>
    <div class="field">
      <div class="ui radio checkbox">
        <input type="radio" name="example1">
        <label>나의 최애</label>
      </div>
    </div>
  </div>
  
  <div class="grouped fields">
    <label>2. 다음 중 일신이의 저녁으로 적절한 것은?</label>
    <div class="field">
      <div class="ui radio checkbox">
        <input type="radio" name="example2" checked="checked">
        <label>식욕이 없어서 안 먹는다.</label>
      </div>
    </div>
    <div class="field">
      <div class="ui radio checkbox">
        <input type="radio" name="example2">
        <label>귀찮아서 안 먹는다.</label>
      </div>
    </div>
    <div class="field">
      <div class="ui radio checkbox">
        <input type="radio" name="example2">
        <label>배가 안 고파서 안 먹는다.</label>
      </div>
    </div>
    <div class="field">
      <div class="ui radio checkbox">
        <input type="radio" name="example2">
        <label>카레</label>
      </div>
    </div>
  </div>
  
</div>
</div>

</div>
</article>
</body>
</html>