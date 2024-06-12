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
    width: 50%; /* 수정된 부분 */
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
</style>
<script type="text/javascript">
	$(function(){
		$("#btn_ok").click(function(){
			alert("a")
		});
		$("#btn_cancel").click(function(){
			alert("b")
		});
	
	});
	
</script>
</head>
<body>
<h3>공지사항 작성</h3>

<div>
<form method="post" name="frmDetail" id="frmDetail">
<input type="hidden" name="num" />
<tr>
<td>과목 :</td> 
<td><input type="text" class="sub_code" id="sub_code" readonly/></td>
</tr>
<table>
<tr>
<td><strong>제목 :</strong></td> 
<td colspan="3"><input type="text" class="title" id="title" style="width: 100%;"/></td> 
</tr>
<tr>
<td>내용 :</td> 
<td colspan="3"><textarea rows="5" style="width: 100%;"></textarea></td>
</tr>

<tr>
<td colspan="4">
<input type="button" id="btn_ok" value="작성완료" class="btn btn btn-info btn-sm"/>
<input type="button" id="btn_cancel" value="취소" class="btn btn btn-info btn-sm"/>
</td>
</tr>
</table>
	
	

</form>
</div>
</body>
</html>