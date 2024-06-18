<!-- 
Desc : 사용자(학생)의 마이페이지 나의 강의 상세 페이지
작성자 : 고한별
작성일 : 2024.06.17
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의강의 - 강의상세</title>
<link rel="icon" href="/all_about_knowledge/favicon.png">
<link rel="stylesheet" type="text/css" href="/all_about_knowledge/front/student/css/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>
<style type = "text/css">
</style>
<script type = "text/javascript">
	$(function() {
		$('.progress').progress();
		$('#playButton').click(function(){
            window.location.href = '${pageContext.request.contextPath}/play_lecture.do';
        });
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
	  <a class="section" href="${pageContext.request.contextPath}/mypage_home.do">나의강의실</a>
	  <i class="right chevron icon divider"></i>
	  <a class="section" href="${pageContext.request.contextPath}/my_lecture.do">나의강의</a>
	  <i class="right chevron icon divider"></i>
	  <div class="active section">강의상세</div>
	</div>

<div class="ui sizer vertical segment div_margin">
  <div class="ui huge header">C var 수현</div>
    <div class="ui segment">
  <div class="ui grid">
  <div class = "four wide column">
    <div class="ui fluid image">
      <img src="/all_about_knowledge/front/student/images/java.png">
    </div>
  </div>
  
    <div class="two wide column right aligned">
	<div class="progress_label">진도율 : </div>
	<div>&nbsp;</div>
	<p>시험응시 : </p>
	<div>&nbsp;</div>
	<p>문의하기 : </p>
    </div>
    
    <div class="three wide column">
    <div class="ui indicating progress no_margin" data-percent="74">
  	<div class="bar">
  	<div class="progress"></div>
  	</div>
  	</div>
  	<div>&nbsp;</div>
  	<button class="ui inverted mini red button">시험응시</button>
  	<div>&nbsp;</div>
  	<p> <button class="ui inverted mini olive button">문의하기</button> </p>
    </div>
    
     <div class="three wide column">
     <div class="ui fluid image">
      <img src="/all_about_knowledge/front/student/images/inst_sample.jpeg">
    </div>
    </div>

     <div class="four wide column">
      <p>강사명 : 진시바</p>
      <p>여기엔 무엇을</p>
      <p>쓰는 것이 좋을까</p>
      <p>세상엔 힘든 일이 많아요</p>
    </div>
    
  </div>
  
  <table class="ui celled table center aligned">
  <thead>
    <tr><th class="one wide">회차</th>
    <th>수업명</th>
    <th class="one wide">상태</th>
    <th class="two wide">재생</th>
  </tr></thead>
  <tbody>
    <tr>
      <td data-label="Number">1</td>
      <td data-label="Title">오리엔테이션</td>
      <td data-label="Status"><div class="ui blue label">완료</div></td>
      <td data-label="Play">
      <div class="ui animated green button" id="playButton" tabindex="0">
  <div class="visible content">재생</div>
  <div class="hidden content">
    <i class="caret square right icon"></i>
  </div>
</div>
</td>
    </tr>
    <tr>
      <td data-label="Number">2</td>
      <td data-label="Title">수업을 시작한다</td>
      <td data-label="Status"><div class="ui yellow label">진행</div></td>
      <td data-label="Play">      
      <div class="ui animated green button" tabindex="0">
  <div class="visible content">재생</div>
  <div class="hidden content">
    <i class="caret square right icon"></i>
  </div>
</div></td>
    </tr>
    <tr>
      <td data-label="Number">3</td>
      <td data-label="Title">C var!</td>
      <td data-label="Status"><div class="ui red label">아직</div></td>
      <td data-label="Play">      <div class="ui animated green button" tabindex="0">
  <div class="visible content">재생</div>
  <div class="hidden content">
    <i class="caret square right icon"></i>
  </div>
</div></td>
    </tr>
  </tbody>
</table>
  
  
  </div>
</div>
</div>
</article>

</body>
</html>