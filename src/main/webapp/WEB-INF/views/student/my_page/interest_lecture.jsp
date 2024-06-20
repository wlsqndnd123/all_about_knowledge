<!-- 
Desc : 사용자(학생)의 마이페이지 관심강의 화면
작성자 : 고한별
작성일 : 2024.06.12
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 관심강의</title>
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
		$('.ui.rating')
		  .rating({
			initialRating: 1,
		    maxRating: 1
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
	  <a class="section">나의강의실</a>
	  <i class="right chevron icon divider"></i>
	  <div class="active section">관심강의</div>
	</div>

<table class="ui celled padded table fav_container center aligned">
  <thead>
    <tr>
    <th class="single line">과목분류</th>
    <th>강좌명</th>
    <th class="one wide">강사명</th>
    <th class="single line">관심등록</th>
    <th class="one wide">강의상세</th>
  </tr></thead>
  <tbody>
    <tr>
      <td class="one wide">
        java
      </td>
      <td class="single line">
        이것이 자바인가
      </td>
      <td>
        곽우신
      </td>
      <td class="one wide">
		<div class="ui heart rating"></div>
      </td>
      <td class="single line">
        <button class="ui blue basic button">
		  보기
		</button>
      </td>
    </tr>
    
    <tr>
      <td class="one wide">
        CS이론
      </td>
      <td class="single line">
        가데이터 넣어줘
      </td>
      <td>
        죽겠네
      </td>
      <td class="one wide">
		<div class="ui heart rating"></div>
      </td>
      <td class="single line">
        <button class="ui blue basic button">
		  보기
		</button>
      </td>
    </tr>
    
    <tr>
      <td class="one wide">
        java
      </td>
      <td class="single line">
        java 숨쉬기보다 쉽다
      </td>
      <td>
        김일신
      </td>
      <td class="one wide">
		<div class="ui heart rating"></div>
      </td>
      <td class="single line">
        <button class="ui blue basic button">
		  보기
		</button>
      </td>
    </tr>
    
    <tr>
      <td class="one wide">
        java
      </td>
      <td class="single line">
        호흡곤란에 빠진 java
      </td>
      <td>
        김도원
      </td>
      <td class="one wide">
		<div class="ui heart rating"></div>
      </td>
      <td class="single line">
        <button class="ui blue basic button">
		  보기
		</button>
      </td>
    </tr>
    
    <tr>
      <td class="one wide">
        C
      </td>
      <td class="single line">
        C var 수현
      </td>
      <td class="single line">
        시바수현
      </td>
      <td class="one wide">
		<div class="ui heart rating"></div>
      </td>
      <td class="single line">
        <button class="ui blue basic button">
		  보기
		</button>
      </td>
    </tr>
    
    <tr>
      <td class="one wide">
        C
      </td>
      <td class="single line">
        진C화로
      </td>
      <td>
        진시바
      </td>
      <td class="one wide">
		<div class="ui heart rating"></div>
      </td>
      <td class="single line">
        <button class="ui blue basic button">
		  보기
		</button>
      </td>
    </tr>
    
    
  </tbody>
  <tfoot>
    <tr><th colspan="5">
      <div class="ui right floated pagination menu">
        <a class="icon item">
          <i class="left chevron icon"></i>
        </a>
        <a class="item">1</a>
        <a class="item">2</a>
        <a class="icon item">
          <i class="right chevron icon"></i>
        </a>
      </div>
    </th>
  </tr></tfoot>
</table>

</div>

</article>

</body>
</html>