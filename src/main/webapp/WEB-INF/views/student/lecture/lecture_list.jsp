<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lecture list</title>

<link rel="stylesheet" type="text/css"
	href="/all_about_knowledge/front/student/css/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>

<!-- Standard Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- Site Properties -->
<title>Fixed Menu Example - Semantic</title>

<!-- Semantic UI CSS -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">

<style type="text/css">
.search-container {
	display: flex;
	justify-content: flex-end;
	margin-bottom: 1em;
}

.ui.horizontal.menu .dropdown.item {
	width: auto; /* 기본 너비 설정 */
	min-width: 120px; /* 최소 너비 설정 */
	text-align: center; /* 텍스트 가운데 정렬 */
}

.ui.horizontal.menu .dropdown.item>.menu {
	min-width: 100%; /* 메뉴 너비 설정 */
	width: auto; /* 메뉴 너비 자동 설정 */
}

.ui.dropdown.item {
	text-align: center; /* 텍스트 가운데 정렬 */
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		// Semantic UI dropdown initialization
		$('.ui.dropdown').dropdown();
		$('.ui.rating')
		  .rating({
			initialRating: 0,
		    maxRating: 1
		  });
	});
	$('#goHome').click(function() {
		window.location.href = '${pageContext.request.contextPath}/index.do';
	});
</script>

</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="../site/main_header.jsp"></jsp:include>

	<div class="ui main container" style="padding: 50px">
		<h1 class="ui header">개설강좌</h1>

		<div class="ui horizontal menu">
			<div class="ui dropdown item">
				카테고리 <i class="dropdown icon"></i>
				<div class="menu">
					<a class="item">개발/프로그래밍</a> <a class="item">데이터사이언스</a>
				</div>
			</div>
			<div class="ui dropdown item">
				과목 <i class="dropdown icon"></i>
				<div class="menu">
					<a class="item">JAVA</a> <a class="item">C</a> <a class="item">파이썬</a>
					<a class="item">JavaScript</a> <a class="item">딥러닝</a> <a
						class="item">데이터엔지니어링</a>
				</div>
			</div>
		</div>
		<div class="search-container">
			<div class="ui icon input">
				<input type="text" placeholder="Search..."> <i
					class="search icon"></i>
			</div>
		</div>
		<div
			style="display: flex; justify-content: space-between; align-items: center; margin-top: 10px; margin-bottom: 10px;">
			<div></div>
			<!-- 왼쪽 여백을 조절하기 위한 빈 div -->
			<select class="ui search dropdown">
				<option value="이름순">이름순</option>
				<option value="최신순">최신순</option>
				<option value="좋아요순">좋아요순</option>
				<option value="인기순">인기순</option>
			</select>
		</div>
		<%-- <table class="ui celled selectable very basic table">
			<thead>
				<tr>
					<th>코드</th>
					<th>제목</th>
					<th>작성자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="listLecture" items="${ requestScope.listLecture }" varStatus="i">
					<tr>
						<td><c:out value="${listLecture.sub_code}" /></td>
						<td><c:out value="${listLecture.intro}" /></td>
						<td><c:out value="${listLecture.goal}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table> --%>
		<div class="ui three stackable link cards">
    <c:forEach var="listLecture" items="${requestScope.listLecture }" varStatus="i">
        <div class="card">
            <a href="user_lecture_detail.do" class="image">
                <img src="${pageContext.request.contextPath}/front/student/images/java.png">
            </a>
            <div class="content">
                <div class="header">
                    <c:out value="${listLecture.sub_title}" />
                </div>
                <div class="meta">
                    <a><c:out value="${listLecture.inst_id}" /></a>
                </div>
            </div>
            <div class="extra content">
                <span class="right floated">
                    <div class="ui heart rating"></div> 17 likes
                </span>
                <span>
                    <i class="user icon"></i> +100명
                </span>
            </div>
        </div>
    </c:forEach>
</div>
	</div>
	<%-- <div class="card">
				<a href="user_lecture_detail.do" class="image"> <img
					src="${pageContext.request.contextPath}/front/student/images/java.png">
				</a>
				<div class="content">
					<div class="header">JAVA 초급 과정</div>
					<div class="meta">
						<!-- <span class="date">곽우신</span> -->
						<a>곽우신</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> <i
						class="heart outline like icon"></i> 17 likes
					</span> <span> <i class="user icon"></i> +100명
					</span>
				</div>
			</div>
			<div class="card">
				<a href="user_lecture_detail.do" class="image"> <img
					src="${pageContext.request.contextPath}/front/student/images/java.png">
				</a>
				<div class="content">
					<div class="header">파이썬 단기완성</div>
					<div class="meta">
						<a>곽우신</a>>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> <i
						class="heart outline like icon"></i> 17 likes
					</span> <span> <i class="user icon"></i> +100명
					</span>
				</div>
			</div>
			<div class="card">
				<a href="user_lecture_detail.do" class="image"> <img
					src="${pageContext.request.contextPath}/front/student/images/java.png">
				</a>
				<div class="content">
					<div class="header">파이썬 단기완성</div>
					<div class="meta">
						<a>Coworker</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> <i
						class="heart outline like icon"></i> 17 likes
					</span> <span> <i class="user icon"></i> +100명
					</span>
				</div>
			</div>
			<div class="card">
				<div class="image">
					<img
						src="${pageContext.request.contextPath}/front/student/images/java.png">
				</div>
				<div class="content">
					<div class="header">파이썬 단기완성</div>
					<div class="meta">
						<a>Coworker</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> <i
						class="heart outline like icon"></i> 17 likes
					</span> <span> <i class="user icon"></i> +100명
					</span>
				</div>
			</div>
			<div class="card">
				<div class="image">
					<img
						src="${pageContext.request.contextPath}/front/student/images/java.png">
				</div>
				<div class="content">
					<div class="header">파이썬 단기완성</div>
					<div class="meta">
						<a>Coworker</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> <i
						class="heart outline like icon"></i> 17 likes
					</span> <span> <i class="user icon"></i> 151 Friends
					</span>
				</div>
			</div>
			<div class="card">
				<div class="image">
					<img
						src="${pageContext.request.contextPath}/front/student/images/java.png">
				</div>
				<div class="content">
					<div class="header">파이썬 단기완성</div>
					<div class="meta">
						<a>Coworker</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> Joined in 2014 </span> <span> <i
						class="user icon"></i> 151 Friends
					</span>
				</div>
			</div>
			<div class="card">
				<div class="image">
					<img
						src="${pageContext.request.contextPath}/front/student/images/java.png">
				</div>
				<div class="content">
					<div class="header">파이썬 단기완성</div>
					<div class="meta">
						<a>Coworker</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> Joined in 2014 </span> <span> <i
						class="user icon"></i> 151 Friends
					</span>
				</div>
			</div>
			<div class="card">
				<div class="image">
					<img
						src="${pageContext.request.contextPath}/front/student/images/java.png">
				</div>
				<div class="content">
					<div class="header">파이썬 단기완성</div>
					<div class="meta">
						<a>Coworker</a>
					</div>
				</div>
				<div class="extra content">
					<span class="right floated"> Joined in 2014 </span> <span> <i
						class="user icon"></i> 151 Friends
					</span>
				</div>
			</div>
		</div> --%>


	<!-- 푸터 -->
	<jsp:include page="../site/main_footer.jsp"></jsp:include>
</body>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- Semantic UI JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
</html>