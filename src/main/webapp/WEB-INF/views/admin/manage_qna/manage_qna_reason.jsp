<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>삭제 사유</title>
    <script>
        function submitForm() {
            var reason = document.getElementById("reason").value;
            if (reason.trim() === "") {
                alert("삭제 사유를 입력해주세요.");
                return false;
            }
            document.getElementById("deleteForm").submit();
            window.close();
        }
    </script>
</head>
<body>
    <h2>삭제 사유 작성</h2>
    <form id="deleteForm" action="deleteReason.jsp" method="post">
        <label for="reason">Reason:</label><br>
        <textarea id="reason" name="reason" rows="4" cols="50"></textarea><br><br>
        <button type="button" onclick="submitForm()">확인</button>
    </form>
</body>
</html>