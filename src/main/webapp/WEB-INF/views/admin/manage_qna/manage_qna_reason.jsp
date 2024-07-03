<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<style>
th,td,tr{font-size: 13px;}
a {text-decoration: none;}
</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All_About_Knowledge</title>

    
    
    <title>삭제 사유</title>
     <script type="text/javascript" src="<c:url value='/resources/js/jquery-3.3.1.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
    <script>
        function submitForm() {
            var reaseon = document.getElementById("reaseon").value;
            if (reaseon.trim() === "") {
                alert("삭제 사유를 입력해주세요.");
                return false;
            }
            if (confirm("삭제하시겠습니까?")) {
            	$("#deleteForm").attr("action", "manage_qna_delete.do");
                $("#deleteForm").submit();
                var cnt = "${cnt}";
                if(cnt == 1)
                	alert("수행을 완료 했습니다.");
                	window.close();
        
                window.onbeforeunload = function() {
                    // 부모 창을 새로고침
                    if (opener) {
                    	 opener.location.href = "manage_qna.do";
                    }
                };
            	}else if(cnt == '0'){
                    alert("수행 중 오류가 있습니다.");
                }
            }
        
        
       
    </script>
</head>
<body>
    <h2>삭제 사유 작성</h2>
    <form id="deleteForm" method="post" >
    <input type="hidden" name="qna_no" value="${param.qna_no}">
        <label for="reason">Reason:</label><br>
        <textarea id="reaseon" name="reaseon" rows="4" cols="50"></textarea><br><br>
        <button type="button" onclick="submitForm()">확인</button>
        <button type="button" onclick="window.close()">취소</button>
    </form>
</body>
</html>
