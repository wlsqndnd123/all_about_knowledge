<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://localhost/all_about_knowledge/common/favicon.ico"/>
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<lick rel="stylesheet" href="http://localhost/all_about_knowledge/common/css/main.css" type="text/css" media="all"/>
<lick rel="stylesheet" href="http://localhost/all_about_knowledge/common/css/board.css" type="text/css" media="all"/>
<!--jQuert CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuert CDN 끝-->


<style type="text/css">


	.sidebar {
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    width: 250px; /* 사이드바 너비 조정 */
    background-color: #212529;
    color: #fff;
    padding-top: 1rem;
    overflow-y: auto;
  }
  body {
    padding: 1.5em;
    background: #f5f5f5;
  }

  .form-container {
    max-width: 800px;
    margin: 0 auto;
    padding: 2em;
    background: #fff;
    box-shadow: 0 2px 5px rgba(0,0,0,.1);
    border-radius: 5px;
  }

  table {
    width: 100%;
    border-collapse: collapse;
  }

  th, td {
    padding: 0.75em;
    text-align: left;
  }

  th {
    background: #73685d;
    color: #fff;
  }

  td {
    border-bottom: 1px solid #ddd;
  }

  .sub_code {
    width: 100px; /* Adjust the width as needed */
    /* 스타일 추가 */
    padding: 0.5em;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  /* input[type="text"]와 textarea를 따로 스타일링 */
  .title, textarea {
    width: 100%;
    padding: 0.5em;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  .btn-container {
    text-align: center; /* 버튼들을 가운데 정렬 */
    margin-top: 1em;
  }

  .btn {
    margin-right: 0.5em;
  }

  @media (max-width: 768px) {
    .form-container {
      padding: 1em;
    }

    th, td {
      display: block;
      width: 100%;
    }

    tr {
      margin-bottom: 1em;
    }
  }
</style>
<script type="text/javascript">
	$(function(){
		$("#btn_ok").click(function(){
			alert("a")
		});
		$("#btn_cancel").click(function(){
			alert("b")
		});
		$("#btn_del").click(function(){
			alert("c")
		});
	
	});
	
</script>
</head>
<body>
<div class="sidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="instructor_index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">AAk 강사메인</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <ul class="nav flex-column">
        <li class="nav-item active">
            <a class="nav-link">
            <i class="fas fa-fw fa-tachometer-alt"></i>
<span>강의관리</span></a>
        </li>

        <li class="nav-item active">
            <a class="nav-link">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>강의신청</span></a>
        </li>

        <li class="nav-item active">
            <a class="nav-link">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>문의사항</span></a>
        </li>

        <li class="nav-item active">
            <a class="nav-link" href="studentList.do">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>수강생 관리</span>
            </a>
        </li>
    </ul>
</div>
<div class="form-container">
  <form method="post" name="frmDetail" id="frmDetail">
    <input type="hidden" name="num" />
    <table>
      <tr>
        <td>과목 :</td>
        <td colspan="2"><input type="text" class="sub_code" id="sub_code" readonly/></td>
      </tr>
      <tr>
        <td><strong>제목 :</strong></td>
        <td colspan="3"><input type="text" class="title" id="title"/></td>
      </tr>
      <tr>
        <td>내용 :</td>
        <td colspan="3"><textarea rows="5"></textarea></td>
      </tr>
    </table>
    <div class="btn-container">
      <input type="button" id="btn_ok" value="수정완료" class="btn btn-info btn-sm"/>
      <input type="button" id="btn_del" value="삭제" class="btn btn-info btn-sm"/>
      <input type="button" id="btn_cancel" value="취소" class="btn btn-info btn-sm"/>
    </div>
  </form>
</div>

</body>
</html>