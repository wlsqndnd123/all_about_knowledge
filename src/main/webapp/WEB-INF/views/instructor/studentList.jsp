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
  body {
    padding: 1.5em;
    background: #f5f5f5;
  }

  table {
    border: 1px #a39485 solid;
    font-size: .9em;
    box-shadow: 0 2px 5px rgba(0,0,0,.25);
    width: 100%;
    border-collapse: collapse;
    border-radius: 5px;
    overflow: hidden;
  }

  th {
    text-align: left;
  }

  thead {
    font-weight: bold;
    color: #fff;
    background: #73685d;
  }

  td, th {
    padding: 1em .5em;
    vertical-align: middle;
  }

  td {
    border-bottom: 1px solid rgba(0,0,0,.1);
    background: #fff;
  }

  a {
    color: #73685d;
  }

  @media all and (max-width: 768px) {
    table, thead, tbody, th, td, tr {
      display: block;
    }

    th {
      text-align: right;
      border-bottom: 1px solid #a39485;
    }

    table {
      position: relative;
      padding-bottom: 0;
      border: none;
      box-shadow: 0 0 10px rgba(0,0,0,.2);
    }

    thead {
      float: left;
      white-space: nowrap;
    }

    tbody {
      overflow-x: auto;
      overflow-y: hidden;
      position: relative;
      white-space: nowrap;
    }

    tr {
      display: inline-block;
      vertical-align: top;
    }

    td {
      border-bottom: 1px solid #e5e5e5;
    }
  }

  .selectbox {
    position: relative;
    width: 200px; /* 너비설정 */
    border: 1px solid #999; /* 테두리 설정 */
    z-index: 1;
    /* focus 효과 */
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  }

  /* focus 효과 */
  .selectbox.focus {
    border-color: #66afe9;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
  }

  /* 가상 선택자를 활용 화살표 대체 */
  .selectbox:before {
    content: "";
    position: absolute;
    top: 50%;
    right: 15px;
    width: 0;
    height: 0;
    margin-top: -1px;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 5px solid #313131;
  }

  .selectbox label {
    position: absolute;
    top: 1px; /* 위치정렬 */
    left: 5px; /* 위치정렬 */
    padding: .5em .5em; /* select의 여백 크기 만큼 */
    color: #333;
    z-index: -1; /* IE8에서 label이 위치한 곳이 클릭되지 않는 것 해결 */
  }

  .selectbox select {
    width: 100%;
    height: auto;  /* 높이 초기화 */  
    line-height: normal; /* line-height 초기화 */  
    font-family: inherit; /* 폰트 상속 */  
    padding: .8em .5em;  /* 여백과 높이 결정 */  
    border: 0;
    opacity: 0;  /* 숨기기 */ 
    filter: alpha(opacity=0);  /* IE8 숨기기 */
    -webkit-appearance: none;  /* 네이티브 외형 감추기 */ 
    -moz-appearance: none;
    appearance: none;
  }

  .search-box {
    display: flex;
    align-items: center;
    height: 40px;
    width: 300px;
    background: white;
    border-radius: 20px;
    padding: 0 10px;
    border: 1px solid #f9deec;
    margin-bottom: 1em; /* 다음 요소와의 간격을 위한 여백 추가 */
  }

  .search-txt {
    flex: 1;
    border: none;
    background: none;
    outline: none;
    padding: 0 10px;
    color: #797979;
    font-size: 16px;
  }

  .search-btn {
    color: #797979;
    background: none;
    border: none;
    font-size: 16px;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .search-box-container {
    display: flex;
    justify-content: flex-end; /* 검색 상자 전체를 오른쪽 정렬 */
  }

  .small-selectbox {
    position: relative;
     top: -10px;
    width: 100px; /* 너비설정 (기존의 절반) */
    border: 1px solid #999; /* 테두리 설정 */
    margin-right: 20px; /* 검색 상자와의 간격 */
    margin-top: 10px; /* 검색 상자 위로 이동 */
    z-index: 1;
    /* focus 효과 */
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  }

  /* focus 효과 */
  .small-selectbox.focus {
    border-color: #66afe9;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
  }

  /* 가상 선택자를 활용 화살표 대체 */
  .small-selectbox:before {
    content: "";
    position: absolute;
    top: 50%;
    right: 10px;
    width: 0;
    height: 0;
    margin-top: -1px;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 5px solid #313131;
  }

  .small-selectbox label {
    position: absolute;
    top: 1px; /* 위치정렬 */
    left: 5px; /* 위치정렬 */
    padding: .5em .5em; /* select의 여백 크기 만큼 */
    color: #333;
    z-index: -1; /* IE8에서 label이 위치한 곳이 클릭되지 않는 것 해결 */
  }

  .small-selectbox select {
    width: 100%;
    height: auto;  /* 높이 초기화 */  
    line-height: normal; /* line-height 초기화 */  
    font-family: inherit; /* 폰트 상속 */  
    padding: .8em .5em;  /* 여백과 높이 결정 */  
    border: 0;
    opacity: 0;  /* 숨기기 */ 
    filter: alpha(opacity=0);  /* IE8 숨기기 */
    -webkit-appearance: none;  /* 네이티브 외형 감추기 */ 
    -moz-appearance: none;
    appearance: none;
  }
</style>
<script type="text/javascript">
	$(function(){
	
	});
	
</script>
</head>
<body>
<div class="selectbox">
  <select id="select">
    <option>1</option>
    <option>2</option>
  </select>
</div><br>
<div class="selectbox">
  <select id="select">
    <option>1</option>
    <option>2</option>
  </select>
</div><br>

<div>전체수강인원:</div>
<div>전체 시험 미응시학생</div>

<div class="search-box-container">
  <div class="small-selectbox">
    <select id="small-select">
      <option>A</option>
      <option>B</option>
    </select>
  </div>
  <form class="search-box" action="" method="get">
    <input class="search-txt" type="text" name="" placeholder="검색어를 입력하세요.">
    <button class="search-btn" type="submit">검색</button>
  </form>
</div>

<table class="table">
  <thead>
    <tr>
      <th class="id">아이디</th>
      <th class="name">이름</th>
      <th class="sub">과목</th>
      <th class="">학습현황</th>
      <th class="">합격여부</th>
      <th class="">시험응시</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>2</td>
      <td>3</td>
      <td>4</td>
      <td>5</td>
      <td>6</td>
    </tr>
  </tbody>
</table>

</body>
</html>