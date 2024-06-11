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
        max-width: 700px;
        margin: 0 auto;
        text-align: center;
    }
    .sub {
        margin: 20px 0;
        text-align: left; /* 과목을 왼쪽으로 정렬합니다. */
    }
    
    .test-box {
        background-color: #ccc;
        border: 1px solid #ccc;
        padding: 20px;
        margin-bottom: 10px;
        border-radius: 5px;
        text-align: left; /* 텍스트 상자 내부의 텍스트를 왼쪽으로 정렬합니다. */
    }
    
    textarea {
        width: 550px;
        height: 100px;
        margin-bottom: 10px;
    }
    
    .test-box input[type="text"] {
        width: 550px;
        margin-bottom: 5px;
    }
    
    #btn-end {
        margin-top: 20px;
    }
</style>
<script type="text/javascript">
$(function(){
    
    $("#btn-add").click(function(){
    	
        const newIndex = $('.test-box').length + 1; 
        
        $("#test").append(`
            <div class="test-box">
                문제 : <textarea></textarea> <br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION${newIndex}" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION${newIndex}" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION${newIndex}" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION${newIndex}" /><br>
            </div>
        `);//#test
    });//btn-add
    
    $("#btn-end").click(function(){
    	
    });
    
    
});
	
</script>
</head>
<body>
<h3>시험 수정</h3>
<div>
<thead>
        <div id="test">
        <td>과목:</td><input type="text" class="sub" id="sub" readonly/>
          </div>
<form>
            <div class="test-box">
                문제 : <textarea></textarea> <br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
                번 보기 <input type="text"/> <input type="radio" name="SOLUTION1" /><br>
            </div>
      
        </thead>
        <tbody>
        <input type="button" id="btn-end" value="수정완료" class="btn btn-info btn-sm"/>
        </tbody>
    </form>

    
</div>

</body>
</html>