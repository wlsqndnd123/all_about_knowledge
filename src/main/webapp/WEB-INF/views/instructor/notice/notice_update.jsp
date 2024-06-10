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
<div>
<form method="post" name="frmDetail" id="frmDetail">
<input type="hidden" name="num" />

<table>
<tr>
<td><strong>제목 :</strong></td> 
<td><input type="text" class="title" id="title"/></td> 
<td>과목 : </td> 
<td><input type="text" class="sub_code" id="sub_code" readonly/></td><br>
</tr>
<tr>
<td>내용 :</td> 
<td><textarea rows="5px"></textarea></td><br>
</tr>
<tr>
<td>
<input type="button" id="btn_ok" value="수정완료" class="btn btn btn-info btn-sm"/>
<input type="button" id="btn_del" value="삭제" class="btn btn btn-info btn-sm"/>
<input type="button" id="btn_cancel" value="취소" class="btn btn btn-info btn-sm"/>
</td>
</tr>
</table>
	
	

</form>
</div>

</body>
</html>