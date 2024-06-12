<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<!--jQuery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuery CDN 끝-->
<style type = "text/css">
	
</style>
<script type = "text/javascript">
	$(function() {
		$("#btnLogin").click(function() {
			$("#frmGet")[0].action="login.do";
			$("#frmGet").submit();
		}); // click
		$("#btnLecture").click(function() {
			$("#frmGet")[0].action="lecture_list.do";
			$("#frmGet").submit();
		}); // click
		$("#btnNotice").click(function() {
			$("#frmGet")[0].action="site_notice.do";
			$("#frmGet").submit();
		}); // click
		$("#btnQna").click(function() {
			$("#frmGet")[0].action="site_qna.do";
			$("#frmGet").submit();
		}); // click
		$("#btnHome").click(function() {
			$("#frmGet")[0].action="mypage_home.do";
			$("#frmGet").submit();
		}); // click
		$("#btnMyLecture").click(function() {
			$("#frmGet")[0].action="my_lecture.do";
			$("#frmGet").submit();
		}); // click
		$("#btnInterestLecture").click(function() {
			$("#frmGet")[0].action="interest_lecture.do";
			$("#frmGet").submit();
		}); // click
		$("#btnMyQuestion").click(function() {
			$("#frmGet")[0].action="my_question.do";
			$("#frmGet").submit();
		}); // click
		$("#btnEditInfomation").click(function() {
			$("#frmGet")[0].action="edit_information.do";
			$("#frmGet").submit();
		}); // click
		$("#btnWithdrawal").click(function() {
			$("#frmGet")[0].action="withdrawal.do";
			$("#frmGet").submit();
		}); // click
	}); // ready
</script>
</head>
<body>
<div>
	<div>
	<form id="frmGet" method="get">
		<input type="button" class="btn btn-sm btn-primary" value="로그인" id="btnLogin"><br>
		<input type="button" class="btn btn-sm btn-info" value="lecture" id="btnLecture"><br>
		<input type="button" class="btn btn-sm btn-info" value="notice" id="btnNotice"><br>
		<input type="button" class="btn btn-sm btn-info" value="qna" id="btnQna"><br>
		<input type="button" class="btn btn-sm btn-success" value="home" id="btnHome"><br>
		<input type="button" class="btn btn-sm btn-success" value="나의강의" id="btnMyLecture"><br>
		<input type="button" class="btn btn-sm btn-success" value="관심강의" id="btnInterestLecture"><br>
		<input type="button" class="btn btn-sm btn-success" value="나의문의" id="btnMyQuestion"><br>
		<input type="button" class="btn btn-sm btn-success" value="개인정보수정" id="btnEditInfomation"><br>
		<input type="button" class="btn btn-sm btn-success" value="탈퇴" id="btnWithdrawal"><br>
	</form>
	</div>
</div>
</body>
</html>