<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" type="text/css"
	href="/all_about_knowledge/front/student/css/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>
<link rel="stylesheet" type="text/css"
	href="../dist/components/icon.css">
<!-- Semantic UI CSS -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
<style type="text/css">
.search-container {
	display: flex;
	justify-content: flex-end;
}

.pagination-container {
	display: flex;
	justify-content: center;
	margin-top: 150px; /* 위에서 주어진 마진 값 */
}

.table td.center-aligned {
	text-align: center;
}

.table td.right-aligned {
	text-align: right;
}

</style>
<script type="text/javascript">
	$(document).ready(function($) {
		$(".clickable-row").click(function() {
			window.location = $(this).data("href");
		});
	});
</script>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../site/main_header.jsp"></jsp:include>

	<!-- main container -->
	<div class="ui main container">
		<h1 class="ui header">공지사항</h1>

		<div class="search-container">
			<div class="ui icon input">
				<input type="text" placeholder="Search..."> <i
					class="search icon"></i>
			</div>
		</div>

		<table class="ui celled selectable very basic table">
			<thead>
				<tr>
					<th class="center-aligned">번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th class="right-aligned">작성일</th>
				</tr>
			</thead>
			<tbody>
				<tr class="clickable-row" data-href="site_notice_detail.do">
					<td class="center-aligned">1</td>
					<td>공지사항 제목 1</td>
					<td>관리자</td>
					<td class="right-aligned">2024-06-08</td>
				</tr>
				<tr>
					<td class="center-aligned">2</td>
					<td>공지사항 제목 2</td>
					<td>관리자</td>
					<td class="right-aligned">2024-06-07</td>
				</tr>
				<tr>
					<td class="center-aligned">3</td>
					<td>공지사항 제목 3</td>
					<td>관리자</td>
					<td class="right-aligned">2024-06-06</td>
				</tr>
				<tr>
					<td class="center-aligned">4</td>
					<td>공지사항 제목 2</td>
					<td>관리자</td>
					<td class="right-aligned">2024-06-07</td>
				</tr>
				<tr>
					<td class="center-aligned">5</td>
					<td>공지사항 제목 3</td>
					<td>관리자</td>
					<td class="right-aligned">2024-06-06</td>
				</tr>
				<tr>
					<td class="center-aligned">6</td>
					<td>공지사항 제목 2</td>
					<td>관리자</td>
					<td class="right-aligned">2024-06-07</td>
				</tr>
				<tr>
					<td class="center-aligned">7</td>
					<td>공지사항 제목 3</td>
					<td>관리자</td>
					<td class="right-aligned">2024-06-06</td>
				</tr>
				<tr>
					<td class="center-aligned">8</td>
					<td>공지사항 제목 3</td>
					<td>관리자</td>
					<td class="right-aligned">2024-06-06</td>
				</tr>
				<tr>
					<td class="center-aligned">9</td>
					<td>공지사항 제목 3</td>
					<td>관리자</td>
					<td class="right-aligned">2024-06-06</td>
				</tr>
				<tr>
					<td class="center-aligned">10</td>
					<td>공지사항 제목 3</td>
					<td>관리자</td>
					<td class="right-aligned">2024-06-06</td>
				</tr>
			</tbody>
		</table>
		<div class="ui container">
			<div class="pagination-container">
				<div class="ui pagination menu">
					<a class="active item"> 1 </a>
					<div class="disabled item">...</div>
					<a class="item"> 10 </a> <a class="item"> 11 </a> <a class="item">
						12 </a>
				</div>
			</div>

		</div>
	</div>

	<!-- 푸터 -->
	<jsp:include page="../site/main_footer.jsp"></jsp:include>
</body>

</html>