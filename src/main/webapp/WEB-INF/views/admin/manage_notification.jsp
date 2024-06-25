<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<style>
th,td,tr{font-size: 12px;}
.dt-end{

            text-align: center;
        }
</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All_About_Knowledge</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
   <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/index-DO6cl02t.css"> 
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fullcalendar.min.css">
    
    <!-- https://fullcalendar.io/ -->
     <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/family.css">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/tooplate.css">
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/datatables.min.css">
    

</head>
<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="brand-logo" href="adminindex.do">
                            <!-- <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i> -->
                            <h3 class="tm-site-title mb-0">All About Knowledge</h3>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#void" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link " href="manage_memberlist.do">
                                        회원 관리
                                    </a>
                                </li>
                                <li class="nav-item " >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>

                                <li class="nav-item  ">
                                    <a class="nav-link" href="manage_qna.do">문의 관리</a>
                                </li>
                                <li class="nav-item  active">
                                    <a class="nav-link " href="manage_notification.do">
                                        공지사항 관리
                                    </a>
                                </li>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-flex" href="admin_index.do">
                                        <i class="far fa-user mr-2 tm-logout-icon"></i>
                                        <span>Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            </div>
            </div>
           <!-- row -->
        <div class="container" style="padding: 1rem">
                <div class="bg-white tm-block col-12" style="width: 20vw;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" ></div>
                <div class="bg-white tm-block col-12" style="overflow:scroll;margin-left: 21vw;width: 62vw;position: fixed;height: 85%">
                    <div class="col-12">
                        <div class="col-12">
                         <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex" style="  margin-left :65% ;height:  40px; text-align: right; width: 100%;" > 
             <ol class="breadcrumb"style="width: 95%;background-color: transparent ; padding-top: 0px; " >
             <li class="breadcrumb-item">
             공지사항 관리
             </li>
             <li class="breadcrumb-item active">
             공지사항 리스트</li></ol>
             </div>
                            	 <div class="d-grid gap-2 d-md-flex justify-content-md-end" >
  	<a href= "manage_notification_write.do"><button class="btn btn-light btn-sm me-md-2" type="button" id ="btnwrite" >공지사항 작성</button></a>
</div>	
<form action="manage_notification_status.do" id ="frmStatus">
				<div style="text-align: left;">
	<select style="width: 100px;" class="form-select" aria-label="Default select example" name ="status" id ="status">
  <option value="3">전체</option>
  <option value="0">예약</option>
  <option value="1">게시</option>
  <option value="2">삭제</option>
</select>
				</div>
</form>
                  <div style="margin-top: 30px;">
                    
                    <table id ="notice" class="table table-hover"  style="width: 100%;margin: auto; text-align: center;">
                    <thead>
                    <tr>
                    <th>번호</th>
                    <th style="width: 60%"><a>공지사항 제목</a></th>
                    <th><a>날짜</a></th>
                    <th><a>상태</a></th>
                    </tr>
                    </thead>
                    <tbody id ="output">
                    <c:forEach var="list" items="${ requestScope.list}" varStatus="i">
                    <tr>
                    <td><c:out value="${  i.count }"/></td>
                    <td><a href="manage_notification_details.do?noti_no=${list.noti_no }"><c:out value="${list.title }"/></a></td>
                    <td><fmt:formatDate  pattern="yyyy-MM-dd" value="${list.write_date }" /></td>
                    <td><c:out value="${list.status}"/></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                    </table>
                    </div>
                        </div>
                    </div>
                </div>
            </div>
 <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
  <!-- https://jquery.com/download/ -->
   <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
   <script type="text/javascript" src="<c:url value ="/resources/js/datatables.min.js"/>"></script>
  <script type="text/javascript">
	  $(function() {
		    // DataTables 초기화
		    var table = $("#notice").DataTable({
		        "processing": true,
		        "serverSide": false, // 클라이언트 측에서 데이터 처리
		        "columns": [
		            { "data": "index" },
		            { "data": "titleLink" },
		            { "data": "write_date" },
		            { "data": "status" }
		        ]
		    });

		    // #status 요소의 값이 변경될 때 이벤트 핸들러를 부착
		    $("#status").change(function() {
		        var status = $(this).val();  // 변경된 #status의 값을 가져옴
		        searchStatus(status, table); // searchStatus 함수를 호출하고 새로운 status를 인자로 넘김
		    });
		});

		function searchStatus(status, table) {
		    $.ajax({
		        url: "manage_notification_status.do",
		        type: "GET",
		        dataType: "JSON",
		        data: { status: status },
		        error: function(xhr) {
		            console.log(xhr.status + " : " + xhr.statusText);
		            alert("서버 오류 발생");
		        },
		        success: function(jsonObj) {
		            var data = jsonObj.list.map(function(item, index) {
		                return {
		                    index: index + 1,
		                    titleLink: "<a href='manage_notification_details.do?noti_no=" + item.noti_no + "'>" + item.title + "</a>",
		                    write_date: item.write_date,
		                    status: item.status
		                };
		            });
		            table.clear();          // 기존 데이터를 지우고
		            table.rows.add(data);   // 새 데이터 추가
		            table.draw();           // 테이블 다시 그리기
		        }
		    });
		}

  
  </script>
    <!-- https://getbootstrap.com/ -->
</body>

</html>