<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "" %>
<script type = "text/javascript">
	$(function() {
		/* 
		$("#btnHome").click(function() {
			$("#frmGet")[0].action="mypage_home.do";
			$("#frmGet").submit();
		}); // click
		$("#btnLecture").click(function() {
			$("#frmGet")[0].action="lecture_list.do";
			$("#frmGet").submit();
		}); // click */
		$('#login').click(function(){
            window.location.href = '${pageContext.request.contextPath}/student/login.do';
        });
		$('#logout').click(function(){
            window.location.href = '${pageContext.request.contextPath}/index.do';
        });
	}); // ready
	</script>
	<style>
    .nav_logo_svg {
        height: 65px;
        width: auto; /* 가로 비율 유지 */
        object-fit: contain; /* 이미지 비율 유지하며 크기 조절 */
    }
    .ui.stackable.menu {
        height: 65px; 
        margin-top: 0px;
    }
</style>
<nav class="ui stackable menu" style="height:65px; margin-top:0px">
<div class="header item">
    <img src="/all_about_knowledge/front/student/icon/title.svg" class="nav_logo_svg" id="home"/>
</div>
  <div class="right menu">
  <!-- <form id="frmGet" method="get"> --> 
  <a class="item" id="btnHome" href="http://localhost/all_about_knowledge/mypage/mypage_home.do">마이페이지</a>
  <a class="item" id="btnLecture" href="http://localhost/all_about_knowledge/lecture_list.do">개설강좌</a>
  <a class="item" id="login">로그인</a>
  <a class="item" id="logout">로그아웃</a>
  <!-- </form> -->
  </div>
</nav>