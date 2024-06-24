<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 상세</title>
<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>

<!-- Semantic UI CSS -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
<!-- Semantic UI JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="/all_about_knowledge/front/student/css/semantic.css">
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>

<style type="text/css">
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
	margin-top: 1em;
}

.custom-large-image {
	width: 300px;
	height: 200px;
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
		// 모달 열기 버튼 클릭 이벤트
		$('#openModalBtn').click(function() {
			$('#myModal').modal('show'); // 모달을 보이도록 설정
		});
		// 글자 수 세기
		$('#content').on('input', function() {
			var textLength = $(this).val().length;
			$('#charCount').text(textLength + '/300자');
		});
		// 수강 신청 버튼 클릭 시 동작
		$('#enrollButton').on('click', function() {
			alert('수강신청이 완료되었습니다.');
			$(this).text('수강 중인 강좌입니다.');
		});

		// 관심 강의 버튼 클릭 시 동작
		$('#likeButton').on('click', function() {
			$(this).toggleClass('active');
		});
	});
</script>
</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="../site/main_header.jsp"></jsp:include>

	<div class="ui main container">
		<!-- <h1 class="ui header"></h1> -->


		<div class="ui segment">
			<div class="ui grid">
				<div class="six wide column">
					<img class="left floated image custom-large-image"
						src="${pageContext.request.contextPath}/front/student/images/java.png">
				</div>
				<div class="ten wide column">
					<p>
					<div class="ui small breadcrumb">
						<a class="section">개발/프로그래밍</a> <i
							class="right chevron icon divider"></i> <a class="active section">C</a>
					</div>
					<h2>이것이 C인가?</h2>
					<br>
					<h5>00명의 수강생</h5>
					<h5>곽우신</h5>
					</p>
				</div>
			</div>
		</div>

		<div class="ui secondary pointing menu">
			<a class="item active" data-content="강의소개"> 강의소개 </a> <a class="item"
				data-content="강의목차"> 강의목차 </a> <a class="item" data-content="수료기준">수료기준
			</a> <a class="item" data-content="강의공지"> 강의공지 </a> <a class="item"
				data-content="강의문의"> 강의문의 </a>
		</div>

		<div class="ui grid">
			<div class="eleven wide column">
				<div id="강의소개" class="content">
					<p>강의 소개 내용</p>
				</div>
				<div id="강의목차" class="content hidden">
					<!-- <p>강의 목차 내용</p> -->
					<table class="ui basic table">
						<thead>
							<tr>
								<th>No</th>
								<th>Title</th>
								<th>Time</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>클래스와 데이터</td>
								<td>07:00</td>
							</tr>
							<tr>
								<td>2</td>
								<td>기본형과 참조형</td>
								<td>10:00</td>
							</tr>
							<tr>
								<td>3</td>
								<td>객체 지향 프로그래밍</td>
								<td>30:00</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="수료기준" class="content hidden">
					<p>수료 기준 내용</p>
				</div>
				<div id="강의공지" class="content hidden">
					<!-- <p>강의 공지 내용</p> -->
					<div class="ui segment">
						<div>
							<h2>[AAK 공지사항] 공지 제목입니다.</h2>
							<h5 style="color: #999;">작성자: admin | 작성일: 2024-06-08</h5>
						</div>
						<hr>
						<p>Page Font A site can specify styles for page content.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Etiam vel tincidunt eros, nec venenatis ipsum. Nulla hendrerit
							urna ex, id sagittis mi scelerisque vitae. Vestibulum posuere
							rutrum interdum. Sed ut ullamcorper odio, non pharetra eros.
							Aenean sed lacus sed enim ornare vestibulum quis a felis. Sed
							cursus nunc sit amet mauris sodales tempus. Nullam mattis, dolor
							non posuere commodo, sapien ligula hendrerit orci, non placerat
							erat felis vel dui. Cras vulputate ligula ut ex tincidunt
							tincidunt. Maecenas eget gravida lorem. Nunc nec facilisis risus.
							Mauris congue elit sit amet elit varius mattis. Praesent
							convallis placerat magna, a bibendum nibh lacinia non.</p>
						<p>Fusce mollis sagittis elit ut maximus. Nullam blandit lacus
							sit amet luctus euismod. Duis luctus leo vel consectetur
							consequat. Phasellus ex ligula, pellentesque et neque vitae,
							elementum placerat eros. Proin eleifend odio nec velit lacinia
							suscipit. Morbi mollis ante nec dapibus gravida. In tincidunt
							augue eu elit porta, vel condimentum purus posuere. Maecenas
							tincidunt, erat sed elementum sagittis, tortor erat faucibus
							tellus, nec molestie mi purus sit amet tellus. Pellentesque
							habitant morbi tristique senectus et netus et malesuada fames ac
							turpis egestas. Mauris a tincidunt metus. Fusce congue metus
							aliquam ex auctor eleifend.</p>

					</div>
				</div>
				<div id="강의문의" class="content hidden">
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
					<div class="box" style="height: auto;">
						<h5>
							질문 제목 <span style="float: right; color: #999;">작성자:dddd
								|작성일: 2024-06-08</span>
						</h5>
						<div class="ui divider"></div>
						<p>질문 내용</p>
					</div>
					<div class="box inline"
						style="height: 80px; margin: 0; background-color: #f5f5f5;">
						<p>강사 답변 내용</p>
					</div>
				</div>
			</div>
			<div class="five wide column">
				<div class="box inline">
					<h3></h3>
					<h3 class="ui center aligned header">무료강의</h3>
					<div class="ui center aligned buttons"
						style="display: flex; flex-direction: column;">
						<!-- <button class="positive ui button" style="margin-bottom: 10px;">수강
							신청</button>
						<button class="ui icon button">
							<i class="heart icon"></i> 관심 강의
						</button> -->
						<button id="enrollButton" class="positive ui button"
							style="margin-bottom: 10px;">수강 신청</button>
						<button id="likeButton" class="ui icon button">
							<i id="heartIcon" class="heart icon"></i> 관심 강의
						</button>
					</div>
				</div>
				<div class="box inline" style="height: 80px; margin: 0;">
					<ul
						style="padding: 0; text-align: center; list-style-type: none; margin: 0;">
						<li>● 총 00개의 수업 (10시간 30분)</li>
						<li>● 0명이 관심강의로 선택했어요</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- 푸터 -->
	<jsp:include page="../site/main_footer.jsp"></jsp:include>
	
</body>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- Semantic UI JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
</html>