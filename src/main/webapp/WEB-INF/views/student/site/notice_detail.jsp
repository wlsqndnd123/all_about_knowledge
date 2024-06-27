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

<style type="text/css">
.search-container {
	display: flex;
	justify-content: flex-end;
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

	<div class="ui main container">
		<h1 class="ui header">공지사항</h1>

		<div class="ui segment">
			<div>
				<h2>[AAK 공지사항] 공지 제목입니다.</h2>
				<h5 style="color: #999;">작성자: admin | 작성일: 2024-06-08</h5>
			</div>
			<hr>
			<p>Page Font A site can specify styles for page content.</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam
				vel tincidunt eros, nec venenatis ipsum. Nulla hendrerit urna ex, id
				sagittis mi scelerisque vitae. Vestibulum posuere rutrum interdum.
				Sed ut ullamcorper odio, non pharetra eros. Aenean sed lacus sed
				enim ornare vestibulum quis a felis. Sed cursus nunc sit amet mauris
				sodales tempus. Nullam mattis, dolor non posuere commodo, sapien
				ligula hendrerit orci, non placerat erat felis vel dui. Cras
				vulputate ligula ut ex tincidunt tincidunt. Maecenas eget gravida
				lorem. Nunc nec facilisis risus. Mauris congue elit sit amet elit
				varius mattis. Praesent convallis placerat magna, a bibendum nibh
				lacinia non.</p>
			<p>Fusce mollis sagittis elit ut maximus. Nullam blandit lacus
				sit amet luctus euismod. Duis luctus leo vel consectetur consequat.
				Phasellus ex ligula, pellentesque et neque vitae, elementum placerat
				eros. Proin eleifend odio nec velit lacinia suscipit. Morbi mollis
				ante nec dapibus gravida. In tincidunt augue eu elit porta, vel
				condimentum purus posuere. Maecenas tincidunt, erat sed elementum
				sagittis, tortor erat faucibus tellus, nec molestie mi purus sit
				amet tellus. Pellentesque habitant morbi tristique senectus et netus
				et malesuada fames ac turpis egestas. Mauris a tincidunt metus.
				Fusce congue metus aliquam ex auctor eleifend.</p>
			<p>Ut imperdiet dignissim feugiat. Phasellus tristique odio eu
				justo dapibus, nec rutrum ipsum luctus. Ut posuere nec tortor eu
				ullamcorper. Etiam pellentesque tincidunt tortor, non sagittis nibh
				pretium sit amet. Sed neque dolor, blandit eu ornare vel, lacinia
				porttitor nisi. Vestibulum sit amet diam rhoncus, consectetur enim
				sit amet, interdum mauris. Praesent feugiat finibus quam, porttitor
				varius est egestas id.</p>

		</div>
		<a href="site_notice.do">
			<button class="ui center aligned button" id="listBtn">
				<i class="list icon"></i> 목록
			</button>
		</a>
	</div>

	<!-- 푸터 -->
	<jsp:include page="../site/main_footer.jsp"></jsp:include>
</body>

</html>