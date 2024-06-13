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
                 <div class="bg-white tm-block col-12" style="width: 100%" >
                    <div class="col-12">
                        <div class="col-12">
                            <h2 class="tm-block-title d-inline-block">교육 카테고리 관리</h2>
                            	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
</div>	
                    <div style="text-align: center;margin: auto;">
                    <select class="form-select form-select-lg mb-3" aria-label="Large select example" >
                    <option selected>교육 카테고리 명</option>
                    <c:forEach var="list" items="${requestScope.list }">
                    <option value="${list.cat_code }"><c:out value="${list.cat_name }"/></option>
                    </c:forEach>
                    </select>
                    <input type="button" class="btn btn-outline-primary btn-sm" value="조회" id ="catbtn"/>
                    </div>
                    <div id ="educatOutput"></div>
                    <div id ="edusubOutput"></div>
                        </div>
                    </div>
                </div>
            </div>
          
 </div>
    </div>

 <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
 <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
 <script type="text/javascript">
 $(function(){
	 $("#catbtn").click(function(){
		 $.ajax({
				url:"http://localhost${pageContext.request.contextPath}/day0611/ajax_responsebody.do",
				type:"GET",
				dataType:"JSON",
				error :function(xhr){
					console.log(xhr.status +" : "+xhr.statusText);
					alert("ㅈㅅㅈㅅ");
				},
				success : function(jsonObj){
					var output ="";
					output+= "<strong>"+jsonObj.name+"</strong>"
					output+="<ul>"
					$.each(jsonObj.lunchList,function(i,jsonTemp){
						output+="<li>"+jsonTemp.lunch+"</li>"
					});
					output+="</ul>"
					$("#educatOutput").html(output);
				}
			})	//ajax	
		 
	 })
 })
 </script>
 </div>
</body>

</html>