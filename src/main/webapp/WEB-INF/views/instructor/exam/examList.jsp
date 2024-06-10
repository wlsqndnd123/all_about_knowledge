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
	form {
        max-width: 800px;
        margin: 20px auto;
        text-align: center;
    }
    .sub {
        width: 300px;
        margin: 20px 0;
    }
    .test-box {
        border: 1px solid #ccc;
        padding: 10px;
        margin-bottom: 10px;
        border-radius: 5px;
    }
    textarea {
        width: 400px;
        height: 100px;
        margin-bottom: 10px;
    }
    .test-box input[type="text"] {
        width: 400px;
        margin-bottom: 5px;
    }
    #btn-write, #btn-update {
        margin-top: 20px;
    }
</style>
<script type="text/javascript">
	$(function(){
		$("#btn-write").click(function(){
			
		});
		$("#btn-update").click(function(){
			
		});
	
	});
	
</script>
</head>
<body>
<div>
    <form>
        <div id="test">
            <td>과목:</td><input type="text" class="sub" id="sub" readonly/>
            <div class="test-box" readonly>
                문제 : <textarea></textarea> <br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
            </div>
        </div>
        <input type="button" id="btn-write" value="문제작성" class="btn btn-info btn-sm"/>
        <input type="button" id="btn-update" value="문제수정" class="btn btn-info btn-sm"/>
    </form>
</div>
</body>
</html>