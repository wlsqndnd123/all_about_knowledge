<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lecture list</title>
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

  <!-- Standard Meta -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

  <!-- Site Properties -->
  <title>Fixed Menu Example - Semantic</title>

  <link rel="stylesheet" type="text/css" href="../dist/components/reset.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/site.css">

  <link rel="stylesheet" type="text/css" href="../dist/components/container.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/grid.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/header.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/image.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/menu.css">

  <link rel="stylesheet" type="text/css" href="../dist/components/divider.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/list.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/segment.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/dropdown.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/icon.css">

  <!-- Semantic UI CSS -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
  
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
    margin-bottom: 1em;
  }
  </style>
  
<script type="text/javascript">
  $(document).ready(function(){
	    // Semantic UI dropdown initialization
	    $('.ui.dropdown').dropdown();
	  });

  /* //카드 클릭 이벤트 
  $('.card').on('click', function() {
    var lectureId = $(this).data('lecture-id');
    window.location.href = 'lecture_detail.jsp?lectureId=' + lectureId;
  }); */
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
    <h1 class="ui header">강의 리스트</h1>
    
    <div class="ui horizontal menu">
	  <div class="ui dropdown item">
	    카테고리
	    <i class="dropdown icon"></i>
	    <div class="menu">
	      <a class="item">개발/프로그래밍</a>
	      <a class="item">데이터사이언스</a>
	    </div>
	  </div>
	  <div class="ui dropdown item">
	    과목
	    <i class="dropdown icon"></i>
	    <div class="menu">
	      <a class="item">JAVA</a>
	      <a class="item">C</a>
	      <a class="item">파이썬</a>
	      <a class="item">JavaScript</a>
	      <a class="item">딥러닝</a>
	      <a class="item">데이터엔지니어링</a>
	    </div>
	  </div>
	</div>
	<div class="search-container">
      <div class="ui icon input">
        <input type="text" placeholder="Search...">
        <i class="search icon"></i>
      </div>
    </div>
	  
	  <div class="ui three stackable link cards">
	  <div class="card">
	    <a href="user_lecture_detail.do" class="image">
	       <img src="${pageContext.request.contextPath}/front/student/img/java.png">
	    </a>
	    <div class="content">
	      <div class="header">이것이 C인가?</div>
	      <div class="meta">
	        <a>곽우신</a>
	      </div>
	      <div class="description">
	        Matthew is an interior designer living in New York.
	      </div>
	    </div>
	    <div class="extra content">
	      <span class="right floated">
		  <i class="heart outline like icon"></i>
		      17 likes
		  </span>
	      <span>
	        <i class="user icon"></i>
	        +100명
	      </span>
	    </div>
	  </div>
	  <div class="card">
	    <a href="user_lecture_detail.do" class="image">
	       <img src="${pageContext.request.contextPath}/front/student/img/java.png">
	    </a>
	    <div class="content">
	      <div class="header">JAVA 초급 과정</div>
	      <div class="meta">
	        <!-- <span class="date">곽우신</span> -->
	        <a>곽우신</a>
	      </div>
	      <div class="description">
	        Molly is a personal assistant living in Paris.
	      </div>
	    </div>
	    <div class="extra content">
	      <span class="right floated">
		  <i class="heart outline like icon"></i>
		      17 likes
		  </span>
	      <span>
	        <i class="user icon"></i>
	        +100명
	      </span>
	    </div>
	  </div>
	  <div class="card">
	    <a href="user_lecture_detail.do" class="image">
	       <img src="${pageContext.request.contextPath}/front/student/img/java.png">
	    </a>
	    <div class="content">
	      <div class="header">파이썬 단기완성</div>
	      <div class="meta">
	        <a>곽우신</a>>
	      </div>
	      <div class="description">
	        Elyse is a copywriter working in New York.
	      </div>
	    </div>
	    <div class="extra content">
	      <span class="right floated">
		  <i class="heart outline like icon"></i>
		      17 likes
		  </span>
	      <span>
	        <i class="user icon"></i>
	        +100명
	      </span>
	    </div>
	  </div>
	  <div class="card">
	    <a href="user_lecture_detail.do" class="image">
	       <img src="${pageContext.request.contextPath}/front/student/img/java.png">
	    </a>
	    <div class="content">
	      <div class="header">파이썬 단기완성</div>
	      <div class="meta">
	        <a>Coworker</a>
	      </div>
	      <div class="description">
	        Elyse is a copywriter working in New York.
	      </div>
	    </div>
	    <div class="extra content">
	      <span class="right floated">
		  <i class="heart outline like icon"></i>
		      17 likes
		  </span>
	      <span>
	        <i class="user icon"></i>
	        +100명
	      </span>
	    </div>
	  </div>
	  <div class="card">
	    <div class="image">
	      <img src="${pageContext.request.contextPath}/front/student/img/java.png">
	    </div>
	    <div class="content">
	      <div class="header">파이썬 단기완성</div>
	      <div class="meta">
	        <a>Coworker</a>
	      </div>
	      <div class="description">
	        Elyse is a copywriter working in New York.
	      </div>
	    </div>
	    <div class="extra content">
	      <span class="right floated">
		  <i class="heart outline like icon"></i>
		      17 likes
		  </span>
	      <span>
	        <i class="user icon"></i>
	        +100명
	      </span>
	    </div>
	  </div>
	  <div class="card">
	    <div class="image">
	      <img src="${pageContext.request.contextPath}/front/student/img/java.png">
	    </div>
	    <div class="content">
	      <div class="header">파이썬 단기완성</div>
	      <div class="meta">
	        <a>Coworker</a>
	      </div>
	      <div class="description">
	        Elyse is a copywriter working in New York.
	      </div>
	    </div>
	    <div class="extra content">
	      <span class="right floated">
		  <i class="heart outline like icon"></i>
		      17 likes
		  </span>
	      <span>
	        <i class="user icon"></i>
	        151 Friends
	      </span>
	    </div>
	  </div>
	  <div class="card">
	    <div class="image">
	      <img src="${pageContext.request.contextPath}/front/student/img/java.png">
	    </div>
	    <div class="content">
	      <div class="header">파이썬 단기완성</div>
	      <div class="meta">
	        <a>Coworker</a>
	      </div>
	      <div class="description">
	        Elyse is a copywriter working in New York.
	      </div>
	    </div>
	    <div class="extra content">
	      <span class="right floated">
	        Joined in 2014
	      </span>
	      <span>
	        <i class="user icon"></i>
	        151 Friends
	      </span>
	    </div>
	  </div>
	  <div class="card">
	    <div class="image">
	      <img src="${pageContext.request.contextPath}/front/student/img/java.png">
	    </div>
	    <div class="content">
	      <div class="header">파이썬 단기완성</div>
	      <div class="meta">
	        <a>Coworker</a>
	      </div>
	      <div class="description">
	        Elyse is a copywriter working in New York.
	      </div>
	    </div>
	    <div class="extra content">
	      <span class="right floated">
	        Joined in 2014
	      </span>
	      <span>
	        <i class="user icon"></i>
	        151 Friends
	      </span>
	    </div>
	  </div>
	  <div class="card">
	    <div class="image">
	      <img src="${pageContext.request.contextPath}/front/student/img/java.png">
	    </div>
	    <div class="content">
	      <div class="header">파이썬 단기완성</div>
	      <div class="meta">
	        <a>Coworker</a>
	      </div>
	      <div class="description">
	        Elyse is a copywriter working in New York.
	      </div>
	    </div>
	    <div class="extra content">
	      <span class="right floated">
	        Joined in 2014
	      </span>
	      <span>
	        <i class="user icon"></i>
	        151 Friends
	      </span>
	    </div>
	  </div>
	</div>
  
  </div>

  <div class="ui vertical footer segment">
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