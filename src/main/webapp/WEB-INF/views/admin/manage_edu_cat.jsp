<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All_About_Knowledge</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
     <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fullcalendar.min.css">
    <!-- https://fullcalendar.io/ -->
     <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/family.css">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/tooplate.css">

</head>

<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="adminindex.do">
                            <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
                            <h1 class="tm-site-title mb-0">All About Knowledge</h1>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item dropdown   active">
                                    <a class="nav-link dropdown-toggle" href="#void" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        회원 관리
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_memberlist.do">회원 리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item " >
                                    <a class="nav-link" href="manage_instructor.do">강사 관리
                                        </a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">문의 관리</a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_qna.do">문의 리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item">
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
             <!-- row -->
        <div class="col-12" style="width: 100%; margin-top: 15px;">
         <div class="col-12" style="width: 100%;margin: 0 auto;" >
                 <div class="bg-white tm-block col-12" style="width: 25%;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" ></div>
                <div class="bg-white tm-block col-12" style="width: 65%;margin-left: 35%;  padding-left: 20px;padding-right: 20px;" >
                    <div class="col-12">
                        <div class="col-12">
                            <h2 class="tm-block-title d-inline-block">교육 카테고리 관리</h2>
                            	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
</div>	
                    <div style="text-align: center;margin: auto;" >
                    <!-- <select class="form-select form-select-lg mb-3" aria-label="Large select example" >
                    --> <label>상위 교육 카테고리 명  </label>
                   <!--  </select> -->
                    <input type="button" class="btn btn-outline-primary btn-sm" value="조회" id ="catbtn"/>
                    <a href =".do"></a><input type="button" class="btn btn-outline-primary btn-sm" value="상위 카테고리 추가" id ="catbtnAdd"/></a>
                    <div id ="educatOutput"  style="text-align: center;margin: auto;"></div>
                    </div>
                  <!--   <div id ="edusubOutput" style="text-align: center;margin: auto;"></div> -->
                        </div>
                    </div>
                </div>
            </div>
          
 </div>
    </div>

 <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
 <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
  <script type="text/javascript">
        $(function() {
        	 $("#catbtn").click(function() {
                 $.ajax({
                     url: "manage_edu_cat_list.do",
                     type: "GET",
                     dataType: "JSON",
                     error: function(xhr) {
                         console.log(xhr.status + " : " + xhr.statusText);
                         alert("서버 오류 발생");
                     },
                     success: function(jsonObj) {
                         var output = "<table class='table table-hover' style='margin: auto; text-align: center;'>";
                        
                         $.each(jsonObj.list, function(i, jsonTemp) {
                             var outputId = 'edusubOutput' + i;
                             output += "<tr><td>" + jsonTemp.cat_name + "</td>";
                             output += "<td><input type='button' class='btn btn-outline-primary btn-sm' value='조회' onclick='searchSubcat(\"" + jsonTemp.cat_code + "\", \"" + outputId + "\")'/></td></tr>";
                             output += "<tr><td colspan='2'><div id='" + outputId + "' style='display: none;'></div></td></tr>";
                         });
                         output += "</table>";
                         $("#educatOutput").html(output).show(); // 카테고리 정보를 표시하고 출력
                     }
                 }); // ajax
             }); // click

             // 접기 버튼 이벤트 리스너 추가
             $(document).on("click", "[id^=btnfold1_]", function(){
                 var id = $(this).attr('id').replace('btnfold1_', '');
                 $("#edusubOutput" + id).toggle();
             });
         });

         function searchSubcat(cat_code, outputId) {
             $.ajax({
                 url: "manage_edu_subcat_list.do",
                 type: "GET",
                 dataType: "JSON",
                 data: { cat_code: cat_code },
                 error: function(xhr) {
                     console.log(xhr.status + " : " + xhr.statusText);
                     alert("서버 오류 발생");
                 },
                 success: function(jsonObj) {
                     var output = "<table class='table table-hover' style='margin: auto; width:70%;text-align:center;'>"
                    	 +"<tr><td>하위 교육 카테고리</td>"
                     +"<td ><input type ='button' class = 'btn btn-outline-primary btn-sm' value ='추가'/></td></tr>";
                     $.each(jsonObj.list, function(i, jsonTemp) {
                         output += "<tr><td >" + jsonTemp.cat_name + "</td></tr>";
                     });
                     output += "<tr><td style ='text-align:right;'><input type='button' class='btn btn-link btn-sm' value='접기' id='btnfold2_" + outputId + "'/></td><tr>"
                    +"</table>"
                     
                     $("#" + outputId).html(output).show(); // 데이터를 불러온 후에 표시

                     // 동적으로 생성된 접기 버튼 이벤트 리스너 추가
                     $("#btnfold2_" + outputId).on("click", function() {
                         $("#" + outputId).toggle();
                     });
                 }
             });
         }
               
    </script>
 </div>
</body>

</html>