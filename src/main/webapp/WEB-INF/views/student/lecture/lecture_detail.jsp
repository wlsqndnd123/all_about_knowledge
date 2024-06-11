<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 상세</title>
<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>

<!-- Semantic UI CSS -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
<!-- Semantic UI JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>

<link rel="stylesheet" type="text/css" href="/all_about_knowledge/front/student/css/semantic.css">
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>

 <style type="text/css">
  body {
    background-color: #FFFFFF;
  }
  .ui.menu .item img.logo {
    margin-right: 1.5em;
  }
  .main.container {
    margin-top: 7em;
  }
  .wireframe {
    margin-top: 2em;
  }
  .ui.footer.segment {
    margin: 5em 0em 0em;
    padding: 5em 0em;
  }
  .ui.fixed.menu {
    background-color: #FFFFFF !important;
    color: #000000 !important;
  }
  .ui.fixed.menu .item {
    color: #000000 !important;
  }
  .ui.fixed.menu .item:hover {
    background-color: #F0F0F0 !important;
  }
  .ui.vertical.footer.segment {
    background-color: #FFFFFF !important;
    color: #000000 !important;
  }
  .ui.vertical.footer.segment .header, .ui.vertical.footer.segment .item {
    color: #000000 !important;
  }
  .ui.vertical.footer.segment .item:hover {
    background-color: #F0F0F0 !important;
  }
  .search-container {
    display: flex;
    justify-content: flex-end;
  }
  .hidden {
            display: none;
        }
 .box {
    border: 1px solid #ccc; 
    padding: 1em;
    margin-bottom: 0em;
    height: 200px; /* 박스의 높이 설정 (필요에 따라 조정) */
  }     
.custom-large-image {
  width: 200px; 
  height: auto; 
}    
</style>

<script type="text/javascript">
$(document).ready(function() {
    $('.ui.secondary.pointing.menu .item').on('click', function() {
      $('.ui.secondary.pointing.menu .item').removeClass('active'); // 모든 아이템에서 active 클래스 제거
      $(this).addClass('active'); // 클릭한 아이템에 active 클래스 추가

      var targetContent = $(this).data('content'); // 클릭한 아이템의 data-content 값을 가져옴
      $('.content').addClass('hidden'); // 모든 컨텐츠를 숨김
      $('#' + targetContent).removeClass('hidden'); // 클릭한 메뉴에 해당하는 컨텐츠를 보여줌
    });
  });
</script>
</head>
<body>

  <div class="ui fixed menu">
    <div class="ui container">
      <a href="#" class="header item">
        <img class="logo" src="assets/images/logo.png">
        Project Name
      </a>
      <a href="#" class="item">Home</a>
      <div class="ui simple dropdown item">
        Dropdown <i class="dropdown icon"></i>
        <div class="menu">
          <a class="item" href="#">Link Item</a>
          <a class="item" href="#">Link Item</a>
          <div class="divider"></div>
          <div class="header">Header Item</div>
          <div class="item">
            <i class="dropdown icon"></i>
            Sub Menu
            <div class="menu">
              <a class="item" href="#">Link Item</a>
              <a class="item" href="#">Link Item</a>
            </div>
          </div>
          <a class="item" href="#">Link Item</a>
        </div>
      </div>
    </div>
  </div>

  <div class="ui main container">
    <h1 class="ui header"></h1>
    <div class="ui breadcrumb">
	  <a class="section">개발/프로그래밍</a>
	  <i class="right angle icon divider"></i>
	  <a class="section">C</a>
	</div>
	
	<div class="ui segment">
  <img class="left floated image custom-large-image" src="${pageContext.request.contextPath}/front/student/images/java.png">
  <p>
  <h2>이것이 C인가?</h2><br>
  <h5>00명의 수강생</h5>
  <h5>곽우신</h5>
  </p>
	</div>
	
	<div class="ui secondary pointing menu">
      <a class="item active" data-content="강의소개">
        강의소개
      </a>
      <a class="item" data-content="강의목차">
        강의목차
      </a>
      <a class="item" data-content="수료기준">
        수료기준
      </a>
      <a class="item" data-content="강의공지">
        강의공지
      </a>
      <a class="item" data-content="강의문의">
        강의문의
      </a>
    </div>
    
    <div class="ui grid">
        <div class="eleven wide column">
		    <div id="강의소개" class="content">
		      <p>강의 소개 내용</p>
		    </div>
		    <div id="강의목차" class="content hidden">
		      <p>강의 목차 내용</p>
		    </div>
		    <div id="수료기준" class="content hidden">
		      <p>수료 기준 내용</p>
		    </div>
		    <div id="강의공지" class="content hidden">
		      <p>강의 공지 내용</p>
		    </div>
		    <div id="강의문의" class="content hidden">
		      <p>강의 문의 내용</p>
		    </div>
		 </div>
		     <div class="five wide column">
            <div class="box inline">
            <h3></h3>
    <h3 class="ui center aligned header">무료강의</h3>
    <div class="ui center aligned buttons" style="display: flex; flex-direction: column;">
        <button class="positive ui button" style="margin-bottom: 10px;">수강 신청</button>
        <button class="ui icon button">
            <i class="heart icon"></i>
            관심 강의
        </button>
    </div>
</div>
            <div class="box inline" style="height: 70px;">
    <ul style="padding: 0; text-align: center; list-style-type: none; margin: 0;">
        <li>● 총 00개의 수업 (10시간 30분)</li>
        <li>● 0명이 관심강의로 선택했어요</li>
    </ul>
</div>
        </div>
    </div>
</div>
    
    
    
  </div>

  <div class="ui inverted vertical footer segment">
    <div class="ui center aligned container">
      <div class="ui stackable inverted divided grid">
        <div class="three wide column">
          <h4 class="ui inverted header">Group 1</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">Link One</a>
            <a href="#" class="item">Link Two</a>
            <a href="#" class="item">Link Three</a>
            <a href="#" class="item">Link Four</a>
          </div>
        </div>
        <div class="three wide column">
          <h4 class="ui inverted header">Group 2</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">Link One</a>
            <a href="#" class="item">Link Two</a>
            <a href="#" class="item">Link Three</a>
            <a href="#" class="item">Link Four</a>
          </div>
        </div>
        <div class="three wide column">
          <h4 class="ui inverted header">Group 3</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">Link One</a>
            <a href="#" class="item">Link Two</a>
            <a href="#" class="item">Link Three</a>
            <a href="#" class="item">Link Four</a>
          </div>
        </div>
        <div class="seven wide column">
          <h4 class="ui inverted header">Footer Header</h4>
          <p>Extra space for a call to action inside the footer that could help re-engage users.</p>
        </div>
      </div>
      <div class="ui inverted section divider"></div>
      <img src="assets/images/logo.png" class="ui centered mini image">
      <div class="ui horizontal inverted small divided link list">
        <a class="item" href="#">Site Map</a>
        <a class="item" href="#">Contact Us</a>
        <a class="item" href="#">Terms and Conditions</a>
        <a class="item" href="#">Privacy Policy</a>
      </div>
    </div>
  </div>
</body>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- Semantic UI JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
</html>