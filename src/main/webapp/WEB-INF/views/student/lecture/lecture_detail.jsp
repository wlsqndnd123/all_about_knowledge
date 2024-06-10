<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--bootstrap 시작-->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script> -->
<!--bootstrap 끝-->

<link rel="stylesheet" href="http://192.168.10.223/spring_mvc/common/css/main.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://192.168.10.223/spring_mvc/common/css/board.css" type="text/css" media="all" />

<!--jQuery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuery CDN 끝-->

<link rel="stylesheet" type="text/css" href="/all_about_knowledge/front/student/css/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>

<!-- Semantic UI CSS -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
 <!--- Component CSS -->
  <link rel="stylesheet" type="text/css" href="../../dist/components/menu.css">

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
</style>
<script type="text/javascript">
  $(document).ready(function(){
	  
	  });
  $(document).ready(function(){
	    $('.ui.menu a.item').on('click', function() {
	      $('.ui.menu a.item').removeClass('active'); // 모든 아이템에서 active 클래스 제거
	      $(this).addClass('active'); // 클릭한 아이템에 active 클래스 추가
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
  <img class="ui small left floated image" src="${pageContext.request.contextPath}/front/student/img/java.png">
  <p>Te eum doming eirmod, nominati pertinacia argumentum ad his. Ex eam alia facete scriptorem, est autem aliquip detraxit at.
   Usu ocurreret referrentur at, cu epicurei appellantur vix. Cum ea laoreet recteque electram, eos choro alterum definiebas in.
    Vim dolorum definiebas an. Mei ex natum rebum iisque.Te eum doming eirmod, nominati pertinacia argumentum ad his. Ex eam alia facete scriptorem, est autem aliquip detraxit at.
   Usu ocurreret referrentur at, cu epicurei appellantur vix. Cum ea laoreet recteque electram, eos choro alterum definiebas in.
    Vim dolorum definiebas an. Mei ex natum rebum iisque.</p>
	</div>
	
	<div class="ui secondary pointing menu">
	  <a class="item active">
	    강의소개
	  </a>
	  <a class="item">
	    강의목차
	  </a>
	  <a class="item">
	    수료기준
	  </a>
	  <a class="item">
	    강의공지
	  </a>
	  <a class="item">
	    강의문의
	  </a>
	</div>
	<!-- <div class="ui segment">
	  <p></p>
	</div> -->
    
    
    
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