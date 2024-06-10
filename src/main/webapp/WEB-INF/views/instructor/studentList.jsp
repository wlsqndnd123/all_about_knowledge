<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.224/spring_mvc/common/favicon.ico"/>
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<lick rel="stylesheet" href="http://192.168.10.224/spring_mvc/common/css/main.css" type="text/css" media="all"/>
<lick rel="stylesheet" href="http://192.168.10.224/spring_mvc/common/css/board.css" type="text/css" media="all"/>
<!--jQuert CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuert CDN 끝-->


<style type="text/css">
	.table{ border: 1px solid #333;}
</style>
<script type="text/javascript">
	$(function(){
	
	});
	
</script>
</head>
<body>
<select>
<option>1</option>
<option>2</option>
</select><br>
<select>
<option>1</option>
<option>2</option>
</select><br>

<td>전체수강인원: </td>
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
 <c:forEach var="" items="" varStatus="">
<tr>
<td><c:out value=""/></td>
<td><c:out value=""/></td>
<td><c:out value=""/></td>
<td><c:out value=""/></td>
<td><c:out value=""/></td>
<td><c:out value=""/></td>

</tr>
</c:forEach>
</tbody>

</table>



</body>
</html>