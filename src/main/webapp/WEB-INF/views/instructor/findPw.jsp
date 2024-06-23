<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon"
	href="http://192.168.10.225/spring_mvc/common/favicon.ico" />
<!--bootstrap 시작-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<link rel="stylesheet"
	href="http://192.168.10.225/spring_mvc/common/css/main.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="http://192.168.10.225/spring_mvc/common/css/board.css"
	type="text/css" media="all" />

<!--jQuery CDN 시작-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuery CDN 끝-->
<script type="text/javascript">
	$(function() {
		$("#searchBtn").click(function(){
			$("#findPwFrm").submit()
			
			if( inputId == ""){
				alert("아이디는 필수 입력");
				$("#inputId").focus();
				return;
			}
			if( inputEmail == ""){
				alert("이메일은 필수 입력");
				$("#inputEmail").focus();
				return;
			}
			if( inputName == ""){
				alert("이름은 필수 입력");
				$("#inputName").focus();
				return;
			}
			
		});
	});//ready
</script>

<form action="http://localhost/all_about_knowledge/instructor/findPw.do" method="post" id="findPwFrm">
  <!-- 아이디 -->
  <div data-mdb-input-init class="form-outline mb-4">
    <input type="text" id="inputId" class="form-control" />
    <label class="form-label" for="form2Example1">아이디를 입력해주세요</label>
  </div>
  
  <!-- 이메일 -->
  <div data-mdb-input-init class="form-outline mb-4">
    <input type="text" id="inputEmail" class="form-control" />
    <label class="form-label" for="form2Example1">이메일을 입력해주세요/label>
  </div>

  <!-- 이름 -->
  <div data-mdb-input-init class="form-outline mb-4">
    <input type="text" id="inputName" class="form-control" />
    <label class="form-label" for="form2Example2">이름을 입력해주세요</label>
  </div>

  <!-- 2 column grid layout for inline styling -->
<!--   <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      Checkbox
      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
        <label class="form-check-label" for="form2Example31"> Remember me </label>
      </div>
    </div>

    <div class="col">
      Simple link
      <a href="#!">비밀번호를 까먹으셨나요?</a>
    </div>
  </div> -->

  <!-- Submit button -->
  <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-block mb-4" id="searchBtn">
  인증하기</button>

</form>