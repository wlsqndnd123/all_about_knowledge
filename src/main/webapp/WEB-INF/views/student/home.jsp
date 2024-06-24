<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AAK</title>
<link rel="icon" href="/all_about_knowledge/favicon.png">
<link rel="stylesheet" type="text/css"
	href="/all_about_knowledge/front/student/css/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">

<style type="text/css">
.hidden.menu {
      display: none;
    }

    .masthead.segment {
      min-height: 350px;
      padding: 1em 0em;
    }
    .masthead .logo.item img {
      margin-right: 1em;
    }
    .masthead .ui.menu .ui.button {
      margin-left: 0.5em;
    }
    .masthead h1.ui.header {
      margin-top: 3em;
      margin-bottom: 0em;
      font-size: 4em;
      font-weight: normal;
    }
    .masthead h2 {
      font-size: 1.7em;
      font-weight: normal;
    }

    .ui.vertical.stripe {
      padding: 4em 0em;
    }
    .ui.vertical.stripe h3 {
      font-size: 2em;
    }
    .ui.vertical.stripe .button + h3,
    .ui.vertical.stripe p + h3 {
      margin-top: 3em;
    }
    .ui.vertical.stripe .floated.image {
      clear: both;
    }
    .ui.vertical.stripe p {
      font-size: 1.33em;
    }
    .ui.vertical.stripe .horizontal.divider {
      margin: 3em 0em;
    }
    .quote.stripe.segment {
      padding: 0em;
    }
    .quote.stripe.segment .grid .column {
      padding-top: 5em;
      padding-bottom: 5em;
    }

    .footer.segment {
      padding: 5em 0em;
    }

    .secondary.pointing.menu .toc.item {
      display: none;
    }

    @media only screen and (max-width: 700px) {
      .ui.fixed.menu {
        display: none !important;
      }
      .secondary.pointing.menu .item,
      .secondary.pointing.menu .menu {
        display: none;
      }
      .secondary.pointing.menu .toc.item {
        display: block;
      }
      .masthead.segment {
        min-height: 350px;
      }
      .masthead h1.ui.header {
        font-size: 2em;
        margin-top: 1.5em;
      }
      .masthead h2 {
        margin-top: 0.5em;
        font-size: 1.5em;
      }
    }

</style>
 <script src="assets/library/jquery.min.js"></script>
  <script src="../dist/components/visibility.js"></script>
  <script src="../dist/components/sidebar.js"></script>
  <script src="../dist/components/transition.js"></script>
<script type="text/javascript">
	$(function() {
		
	}); // ready
	
	$(document)
    .ready(function() {

      $('.masthead')
        .visibility({
          once: false,
          onBottomPassed: function() {
            $('.fixed.menu').transition('fade in');
          },
          onBottomPassedReverse: function() {
            $('.fixed.menu').transition('fade out');
          }
        })
      ;

      $('.ui.sidebar')
        .sidebar('attach events', '.toc.item');

      $('.ui.rating')
	  .rating({
		initialRating: 1,
	    maxRating: 1
	  });
    });
</script>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="site/main_header.jsp"></jsp:include>

	<!-- 컨텐츠 영역 -->
	<!-- Page Contents -->
<div class="pusher">
  <div class="ui inverted vertical masthead center aligned segment" style="background-color: #E2F0D9;">
    <div class="ui container">
    <h1 class="ui inverted header" style="margin-top:40px;color: black;"> 
         <div class="ui red button" style="pointer-events: none; cursor: default;">
            전부무료
        </div>
        <div style="margin-top: 20px;color: black;">
        <span>
            기다리던 JAVA 강의가 왔습니다!
        </span>
        </div>
        <div>
            그것도, <span style="color: red;">무료</span>로!
        </div>
    </h1>
</div>

  </div>

  <div class="ui vertical stripe segment">
    <div class="ui center aligned stackable container">
          <h3>수강을 원하는<br> 강의를 검색하세요</h3>
		<div class="ui huge icon input" style="margin-top:1em; width:500px">
		  <input type="text" placeholder="카테고리, 과목명으로 검색하세요..">
		  <i class="search icon"></i>
		</div>
    </div>
  </div>


  <div class="ui vertical stripe segment">
    <div class="ui container">
      <h3 class="ui header" style="text-align: center; margin-bottom:1.5em;">인기강좌</h3>
      <div class="ui three stackable link cards">
      <div class="card">
      <a class="ui red right corner label">
        <i class="thumbs up outline icon"></i>
      </a>
				<a href="user_lecture_detail.do" class="image"> <img
					src="${pageContext.request.contextPath}/front/student/images/java.png">
				</a>
				<div class="content">
					<div class="header">이것이 C인가?</div>
					<div class="meta">
						<a>곽우신</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> 
					<!-- <i class="heart outline like icon"></i> -->
					<div class="ui heart rating"></div> 17 likes
					</span> <span> <i class="user icon"></i> +100명
					</span>
				</div>
			</div>
			<div class="card">
			<a class="ui red right corner label">
        <i class="thumbs up outline icon"></i>
      </a>
				<a href="user_lecture_detail.do" class="image"> <img
					src="${pageContext.request.contextPath}/front/student/images/java.png">
				</a>
				<div class="content">
					<div class="header">이것이 C인가?</div>
					<div class="meta">
						<a>곽우신</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> 
					<!-- <i class="heart outline like icon"></i> -->
					<div class="ui heart rating"></div> 17 likes
					</span> <span> <i class="user icon"></i> +100명
					</span>
				</div>
			</div>
			<div class="card">
			<a class="ui red right corner label">
        <i class="thumbs up outline icon"></i>
      </a>
				<a href="user_lecture_detail.do" class="image"> <img
					src="${pageContext.request.contextPath}/front/student/images/java.png">
				</a>
				<div class="content">
					<div class="header">이것이 C인가?</div>
					<div class="meta">
						<a>곽우신</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> 
					<!-- <i class="heart outline like icon"></i> -->
					<div class="ui heart rating"></div> 17 likes
					</span> <span> <i class="user icon"></i> +100명
					</span>
				</div>
			</div>
			<div class="card">
				<a href="user_lecture_detail.do" class="image"> <img
					src="${pageContext.request.contextPath}/front/student/images/java.png">
				</a>
				<div class="content">
					<div class="header">이것이 C인가?</div>
					<div class="meta">
						<a>곽우신</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> 
					<!-- <i class="heart outline like icon"></i> -->
					<div class="ui heart rating"></div> 17 likes
					</span> <span> <i class="user icon"></i> +100명
					</span>
				</div>
			</div>
			<div class="card">
				<a href="user_lecture_detail.do" class="image"> <img
					src="${pageContext.request.contextPath}/front/student/images/java.png">
				</a>
				<div class="content">
					<div class="header">이것이 C인가?</div>
					<div class="meta">
						<a>곽우신</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> 
					<!-- <i class="heart outline like icon"></i> -->
					<div class="ui heart rating"></div> 17 likes
					</span> <span> <i class="user icon"></i> +100명
					</span>
				</div>
			</div>
			<div class="card">
				<a href="user_lecture_detail.do" class="image"> <img
					src="${pageContext.request.contextPath}/front/student/images/java.png">
				</a>
				<div class="content">
					<div class="header">이것이 C인가?</div>
					<div class="meta">
						<a>곽우신</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> 
					<!-- <i class="heart outline like icon"></i> -->
					<div class="ui heart rating"></div> 17 likes
					</span> <span> <i class="user icon"></i> +100명
					</span>
				</div>
			</div>
      </div>
    </div>
  </div>


<div class="ui vertical stripe quote segment">
    <div class="ui equal width stackable internally celled grid">
      <div class="center aligned row">
        <div class="column">
          <h3>"What a Company"</h3>
          <p>That is what they all say about us</p>
        </div>
        <div class="column">
          <h3>"I shouldn't have gone with their competitor."</h3>
          <p>
            <img src="assets/images/avatar/nan.jpg" class="ui avatar image"> <b>Nan</b> Chief Fun Officer Acme Toys
          </p>
        </div>
      </div>
    </div>
  </div>

  <div class="ui vertical segment" style="padding:50px">
    <!-- <div class="ui text container">
      <h3 class="ui header">Breaking The Grid, Grabs Your Attention</h3>
      <p>Instead of focusing on content creation and hard work, we have learned how to master the art of doing nothing by providing massive amounts of whitespace and generic content that can seem massive, monolithic and worth your attention.</p>
      <a class="ui large button">Read More</a>
      <h4 class="ui horizontal header divider">
        <a href="#">Case Studies</a>
      </h4>
      <h3 class="ui header">Did We Tell You About Our Bananas?</h3>
      <p>Yes I know you probably disregarded the earlier boasts as non-sequitur filler content, but its really true. It took years of gene splicing and combinatory DNA research, but our bananas can really dance.</p>
      <a class="ui large button">I'm Still Quite Interested</a>
    </div> -->
  </div> 

</div>


	<!-- 푸터 -->
	<jsp:include page="site/main_footer.jsp"></jsp:include>
</body>
</html>