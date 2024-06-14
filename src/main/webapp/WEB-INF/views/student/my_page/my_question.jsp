<!-- 
Desc : 사용자(학생)의 마이페이지 나의문의 화면
작성자 : 고한별
작성일 : 2024.06.12
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 나의문의</title>
<link rel="icon" href="/all_about_knowledge/favicon.png">
<link rel="stylesheet" type="text/css"
	href="/all_about_knowledge/front/student/css/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>
<style type="text/css">
</style>
<script type="text/javascript">
	$(function() {
		/* 		$('.ui.tabular.menu .item').on('click',function() {
		 $('.ui.tabular.menu .item').removeClass('active'); // 모든 아이템에서 active 클래스 제거
		 $(this).addClass('active'); // 클릭한 아이템에 active 클래스 추가
		
		
		 var targetTab = $(this).data('tab'); // 클릭한 아이템의 data-tab 값을 가져옴
		 //alert( $(this).addClass('active') )
		 $('.content').addClass('hidden');
		 $('.content .tab[data-tab="' + targetTab + '"]').removeClass('hidden');
		 $('.content .tab[data-tab="' + targetTab + '"]').addClass('active');
		 /* $('#'+targetTab).removeClass('hidden');		 */
		$('.tabular.menu .item').tab();

		$(".clickable-row").click(function() {
			window.location = $(this).data("href");
		});
		/* 		
		 }); */
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
				<a class="section">나의강의실</a> <i class="right chevron icon divider"></i>
				<div class="active section">나의문의</div>
			</div>

			<!-- menu tab 표시 -->
			<div class="ui tabular menu div_margin">
				<a class="item active" data-tab="강의 문의"> 강의 문의 </a> <a class="item"
					data-tab="AAK 문의"> AAK 문의 </a>
			</div>

			<!-- 문의사항 테이블  active -->
			<div class="div_margin">
				<a href="site_qna_write.do"> <!-- <div style="text-align: right;">
						<button class="ui button">문의 작성</button>
					</div> -->
				</a>
				<div class="content ui tab active" data-tab="강의 문의" item="first">
					<h5>*강의와 관련된 문의는 문의하고 싶은 강의의 상세 페이지에서 작성해주세요</h5>
					<table class="ui celled selectable very basic table">
						<thead>
							<tr>
								<th>No</th>
								<th>Title</th>
								<th>Date</th>
								<th>답변</th>
							</tr>
						</thead>
						<tbody>
							<tr class="clickable-row" data-href="site_notice_detail.do">
								<td>1</td>
								<td>강의 문의 제목 1</td>
								<td>2024-06-08</td>
								<td>답변완료</td>
							</tr>
							<tr>
								<td>2</td>
								<td>강의 문의 제목 2</td>
								<td>2024-06-07</td>
								<td>대기중</td>
							</tr>
							<tr>
								<td>3</td>
								<td>강의 문의 제목 3</td>
								<td>2024-06-06</td>
								<td>대기중</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="content ui tab" data-tab="AAK 문의" item="second">
					<a href="site_qna_write.do">
						<div style="text-align: right;">
							<button class="ui button">문의 작성</button>
						</div>
					</a>
					<table class="ui celled selectable very basic table">
						<thead>
							<tr>
								<th>No</th>
								<th>Title</th>
								<th>Date</th>
								<th>답변</th>
							</tr>
						</thead>
						<tbody>
							<tr class="clickable-row" data-href="site_qna_detail.do">
								<td>1</td>
								<td>AAK 문의 제목 1</td>
								<td>2024-06-08</td>
								<td>답변완료</td>
							</tr>
							<tr>
								<td>2</td>
								<td>AAK 문의 제목 2</td>
								<td>2024-06-07</td>
								<td>답변완료</td>
							</tr>
							<tr>
								<td>3</td>
								<td>AAK 문의 제목 3</td>
								<td>2024-06-06</td>
								<td>대기중</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</article>

</body>
</html>