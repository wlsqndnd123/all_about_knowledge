<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항</title>
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
	margin-top: 0.5em;
}

.pagination-container {
	display: flex;
	justify-content: center;
	margin-top: 150px; /* 위에서 주어진 마진 값 */
}
</style>
<script type="text/javascript">
	$(document).ready(function($) {
		$(".clickable-row").click(function() {
			window.location = $(this).data("href");
		});
		// 모달 열기 버튼 클릭 이벤트
		$('#openModalBtn').click(function() {
			$('#myModal').modal('show'); // 모달을 보이도록 설정
		});
		// 글자 수 세기
		$('#content').on('input', function() {
			var textLength = $(this).val().length;
			$('#charCount').text(textLength + '/300자');
		});
	});
</script>
</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="../site/main_header.jsp"></jsp:include>


	<div class="ui main container">
		<h1 class="ui header">문의사항</h1>
		<div style="text-align: right;">
			<button id="openModalBtn" class="ui button">문의 작성</button>
		</div>
		<div class="ui modal" id="myModal">
			<i class="close icon"></i>
			<div class="header">문의사항 작성</div>
			<div class="content">
				<div class="ui form">
					<div class="field">
						<label>작성자: userId | 작성일: 2024-06-18</label>
					</div>
					<div class="field">
						<label>제목</label> <input type="text" name="title"
							placeholder="제목을 입력하세요">
					</div>
					<div class="field">
						<label>내용</label>
						<textarea rows="5" name="content" id="content"
							placeholder="문의사항을 입력하세요"></textarea>
						<div class="ui message" id="charCount">0/300자</div>
					</div>
				</div>
			</div>
			<div class="actions">
				<div class="ui positive button">전송</div>
			</div>
		</div>
		<div class="search-container">
			<div class="ui icon input">
				<input type="text" placeholder="Search..."> <i
					class="search icon"></i>
			</div>
		</div>

		<table class="ui celled selectable very basic table">
			<thead>
				<tr>
					<th>숫자</th>
					<th>제목</th>
					<th>작성일</th>
					<th>답변</th>
				</tr>
			</thead>
			<tbody>
				<tr class="clickable-row" data-href="site_qna_detail.do">
					<td>1</td>
					<td>문의사항 제목 1</td>
					<td>2024-06-08</td>
					<td class="red-text">답변완료</td>
				</tr>
				<tr class="clickable-row" data-href="site_qna_detail.do">
					<td>2</td>
					<td>문의사항 제목 2</td>
					<td>2024-06-07</td>
					<td>대기</td>
				</tr>
				<tr class="clickable-row" data-href="site_qna_detail.do">
					<td>3</td>
					<td>문의사항 제목 3</td>
					<td>2024-06-06</td>
					<td>대기</td>
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