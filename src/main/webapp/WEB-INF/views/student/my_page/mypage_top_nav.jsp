<!-- 
Desc : 사용자(학생)의 마이페이지 상단 네비게이션
작성자 : 고한별
작성일 : 2024.06.11
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "" %>
<script type = "text/javascript">
	$(function() {
		$('#logout').click(function(){
            window.location.href = '${pageContext.request.contextPath}/index.do';
        });
	}); // ready
	</script>
<nav class="top_nav ui small stackable menu">
  <div class="right menu">
  <a class="item">개설강좌</a>
  <a class="item">이용안내</a>
  <a class="item" id="logout">로그아웃</a>
  </div>
</nav>