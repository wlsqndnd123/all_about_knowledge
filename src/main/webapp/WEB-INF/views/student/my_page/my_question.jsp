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
.content.ui.tab.active,
        .content.ui.tab {
            width: 85%;
        }
.content-box {
	border: 1px solid #ddd;
	padding: 10px;
	border-radius: 5px;
	background-color: #f9f9f9;
	margin-bottom: 20px;
}

.divider {
	border-top: 1px solid #ddd;
	margin: 20px 0;
}
</style>
<script type="text/javascript">
	$(function() {
		$('.tabular.menu .item').tab();

		$(".clickable-row").click(function() {
			var title = $(this).data('title');
			var date = $(this).data('date');
			var content = $(this).data('content');
			var status = $(this).data('status');
			$('#modalTitle').text(title);
			$('#modalContent').text(content);
			/* $('#modalInfo').text('작성자: ' + std_id + ' | 상태: ' + status); */
			$('#myModal').modal('show');
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
				<!-- 강의 문의 테이블 -->
				<div class="content ui tab active" data-tab="강의 문의" item="first">
					<h5>*강의와 관련된 문의는 문의하고 싶은 강의의 상세 페이지에서 작성해주세요</h5>
					<table class="ui celled selectable very basic table">
						<thead>
							<tr>
								<th>No</th>
								<th>제목</th>
								<th>과목명</th>
								<th>답변상태</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<tr class="clickable-row" data-id="1" data-title="강의 문의 제목 1"
								data-date="2024-06-08" data-status="답변완료">
								<td>1</td>
								<td>강의 문의 제목 1</td>
								<td>과목명1</td>
								<td>답변완료</td>
								<td>2024-06-08</td>
							</tr>
							<tr class="clickable-row" data-id="2" data-title="강의 문의 제목 2"
								data-date="2024-06-07" data-status="대기중">
								<td>2</td>
								<td>강의 문의 제목 2</td>
								<td>과목명2</td>
								<td>대기중</td>
								<td>2024-06-08</td>
							</tr>
							<tr class="clickable-row" data-id="3" data-title="강의 문의 제목 3"
								data-date="2024-06-06" data-status="대기중">
								<td>3</td>
								<td>강의 문의 제목 3</td>
								<td>과목명3</td>
								<td>대기중</td>
								<td>2024-06-08</td>
							</tr>
						</tbody>
					</table>

				</div>

				<div class="content ui tab" data-tab="AAK 문의" item="second">
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
							<tr class="clickable-row">
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

			<!-- 문의사항 상세보기 모달창 -->
			<div class="ui modal" id="myModal">
				<i class="close icon"></i>
				<div class="header">문의사항</div>
				<div class="content">
					<div class="ui form">
						<div class="field" style="text-align: left;">
							<h4>과목명 : 자바란 무엇인가?</h4>
						</div>
						<div class="field">
							<label>제목</label>
							<div class="content-box" id="modalTitle"></div>
						</div>
						<div class="field">
							<label>내용</label>
							<div class="content-box" id="modalContent">
								<p id="modalContent">강의와 관련된 문의입니다. 강의와 관련된 문의입니다. 강의와 관련된
									문의입니다. 강의와 관련된 문의입니다. 강의와 관련된 문의입니다. 강의와 관련된 문의입니다. 강의와 관련된
									문의입니다. 강의와 관련된 문의입니다.</p>
							</div>
						</div>
						<div class="field" style="text-align: right;">
							<label id="modalInfo">작성자: std_id | 작성일: 2024-06-18</label>
						</div>
						<div class="divider"></div>
						<div class="field">
							<label>강사의 답변</label>
							<div class="content-box" id="modalReply">
								<p>강사의 답변입니다. 강사의 답변입니다. 강사의 답변입니다. 강사의 답변입니다. 강사의 답변입니다.
									강사의 답변입니다. 강사의 답변입니다. 강사의 답변입니다. 강사의 답변입니다. 강사의 답변입니다.</p>
							</div>
							<div class="field" style="text-align: right;">
								<label id="modalInfo">작성자: std_id | 작성일: 2024-06-18</label>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

	</article>

</body>
</html>