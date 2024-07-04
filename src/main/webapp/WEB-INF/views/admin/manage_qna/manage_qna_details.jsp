<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<style>
th,td,tr{font-size: 13px;}
a {text-decoration: none;}
</style>

<style>
        /* 모달 효과를 위한 스타일 추가 */
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 999;
            display: none;
        }
    </style>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All_About_Knowledge</title>
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fullcalendar.min.css">
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/family.css">
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fontawesome.min.css">
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/tooplate.css">
</head>
<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="adminindex.do">
                            <h2 class="tm-site-title mb-0">All About Knowledge</h2>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                               <c:if test="${sessionScope.adminPermission.category_management == 'Y'}">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#void" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
                                </c:if>
                                	<c:if test="${sessionScope.adminPermission.member_management == 'Y'}">
                             <li class="nav-item " >
                                    <a class="nav-link " href="manage_memberlist.do">회원 관리
                                        </a>
                                        
                                </li>
                                </c:if>
                                <c:if test="${sessionScope.adminPermission.instructor_management == 'Y'}">
                                <li class="nav-item " >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>
								</c:if>
								<c:if test="${sessionScope.adminPermission.qna_management == 'Y'}">
                                
                                <li class="nav-item active">
                                    <a class="nav-link " href="manage_qna.do" >문의 관리
                                    </a>
                                    
                                </li>
                                </c:if>
                                <c:if test="${sessionScope.adminPermission.notice_management == 'Y'}">
                                
                                <li class="nav-item ">
                                    <a class="nav-link " href="manage_notification.do">
                                        공지사항 관리
                                    </a>
                                </li>
                                </c:if>
                                <c:if test="${sessionScope.auth == 'SUPER'}">
                                <li class="nav-item">
                                    <a class="nav-link " href="manage_admin.do">
                                        관리자 관리
                                    </a>
                                </li>
                                </c:if>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-flex" href="admin_index_logout.do">
                                        <i class="far fa-user mr-2 tm-logout-icon"></i>
                                        <span>Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            </div><div class="container" style="padding: 1rem">
                <div class="bg-white tm-block col-12" style="width: 20vw;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" >
                 <div>
                <table class ="table table-hover">
                <tr><td>${ adminid }님, 환영합니다 !</td></tr>
                </table>
                </div>
                </div>
            
               
                 <div class="bg-white tm-block col-12" style="overflow:scroll;margin-left: 21vw;width: 62vw;position: fixed;height: 85%">    
                 <div class="col-12">
                        <div class="col-12">
                  <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex" style=" margin-left :65% ;height:  40px; text-align: right; width: 35%;" > 
             <ol class="breadcrumb"style="width: 95%;background-color: transparent ; padding-top: 0px; " >
             <li class="breadcrumb-item">
             공지사항 관리
             </li>
             <li class="breadcrumb-item active">
             공지사항 상세</li></ol>
             </div>
                           
          	 <form action="manage_qna_details.do" method="post" id="frmPost";>
                <h2 class="tm-block-title d-inline-block">문의 제목 : <c:out value="${qnaDomain.title}"/></h2>
                <input type="hidden" name="title" value="${qnaDomain.title}">
                <div class="mb-3">
                    <label for="qna_code" class="col-sm-5 col-form-label">문의 코드 : <c:out value="${qnaDomain.qna_no}"/></label>
                    <input type="hidden" id="qna_code" name="qna_no" value="${qnaDomain.qna_no}">
                    <input type="hidden" name="status" value="${qnaDomain.status}">
                    <input type="hidden" name="id" value="${param.id}">
                    
                    <label for="staticEmail" class="col-sm-5 col-form-label">문의자 : <c:out value="${qnaDomain.std_id}"/></label>
                    
                    <c:if test="${param.status eq 'Y' and param.delete eq null}">
                    <button class="btn btn-light btn-sm me-md-2" type="button" id="delete">삭제</button>
                    </c:if>
                    
                </div>
                <div class="mb-3">
                    <div>
                        <label for="content_question" class="form-label">문의 사항 내용</label>
                        <textarea class="form-control h-25" readonly id="content_question" rows="13" style=" resize: none;" name="content_question"><c:out value="${qnaDomain.content_question}"/></textarea>
                    </div>
                    <div>
                     <c:choose>
                    	<c:when test="${param.status eq 'D'}">
                        <label for="content_answer" class="form-label">삭제 사유</label>
                        <textarea class="form-control h-25"  readonly  id="content_answer" rows="13" style= "resize: none;" name="content_answer" maxlength="100"><c:out value="${qnaDomain.reaseon}"/></textarea>
                    	</c:when>  
                    	<c:otherwise>
                        <label for="content_answer" class="form-label">문의 답변</label>
                        <textarea class="form-control h-25" id="content_answer" rows="13" style= "resize: none;" name="content_answer" maxlength="100"><c:out value="${qnaDomain.content_answer}"/></textarea>
                        </c:otherwise>	
                     </c:choose>
                        <div class="textCount" id="charCount" >0</div>/100자
                    </div>
                </div>
                <div class="right">
                    <c:if test="${param.status eq 'N' and param.delete eq null}">
                        <button class="btn btn-light btn-sm me-md-2" type="button" id="checkA">확인</button>
                    </c:if>
                    <c:if test="${param.status eq 'Y' and param.delete eq null}">
                        <button class="btn btn-light btn-sm me-md-2" type="button" id="submitA">수정</button>
                    </c:if>
                    
                    <button class="btn btn-light btn-sm me-md-2" type="button" id="goBack">뒤로</button>
                </div>
            </form>
    	</div>
    	</div>
    </div>
    </div>
     <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
 <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
   <script type="text/javascript" src="<c:url value ="/resources/js/datatables.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value ="/resources/js/Chart.min.js"/>"></script>
    
    <script type="text/javascript">
    
        $('#content_answer').keyup(function (e) {
            let content = $(this).val();
            // 글자수 세기
            if (content.length == 0 || content == '') {
                $('.textCount').text('0자');
            } else {
                $('.textCount').text(content.length + '자');
            }
            
            // 글자수 제한
            if (content.length > 100) {
                // 100자 부터는 타이핑 되지 않도록
                $(this).val($(this).val().substring(0, 100));
                // 100자 넘으면 알림창 뜨도록
                alert('글자수는 100자까지 입력 가능합니다.');
            }
        });

         $(document).ready(function(){
        	 
        	 $("#delete").click(function(){
        	     openDeletePopup();
        	 });

            /* 답변내용변경 */
            $("#submitA").click(function(){
                if(!confirm("답변내용을 수정 하시겠습니까?")){
                    return;
                } else {
                    $("#frmPost").attr("action", "manage_qna_modyify.do");
                    $("#frmPost").submit();
                }
            });

            /* 답변내용입력 */
            $("#checkA").click(function(){
                if(!confirm("답변내용을 입력 하시겠습니까?")){
                    return;
                } else {
                    $("#frmPost").attr("action", "manage_qna_add.do");
                    $("#frmPost").submit();
                }
            });

            var cnt = "${cnt}";
            if (cnt == 1) {
                alert("수행을 완료 했습니다.");
                location.href="manage_qna.do";
            } else if(cnt == '0'){
                alert("수행 중 오류가 있습니다.");
                location.href="manage_qna.do";
            }

            $("#goBack").click(function(){
                location.href="manage_qna.do";
            });
        });

        // 삭제 팝업창
        function openDeletePopup() {
            // 팝업창 크기
            var popupWidth = 400;
            var popupHeight = 300;

            // 부모창 크기
            var screenWidth = window.innerWidth;
            var screenHeight = window.innerHeight;

            // 부모창의 중간 위치 계산
            var left = (screenWidth - popupWidth) / 2;
            var top = (screenHeight - popupHeight) / 2;

            // 부모창 밖으로 나가지 않도록 조정
            left = Math.max(0, left);
            top = Math.max(0, top);

            // 팝업창 열기
            var popup = window.open("manage_qna_reason.do?qna_no=${param.qna_no}", "DeletePopup", "width=" + popupWidth + ",height=" + popupHeight + ",left=" + left + ",top=" + top);

            // 모달 오버레이 추가
            var modalOverlay = document.createElement('div');
            modalOverlay.className = 'modal-overlay';
            document.body.appendChild(modalOverlay);
            modalOverlay.style.display = 'block';

            // 팝업창이 부모창 위에 있는지 확인하고 위치를 유지
            var interval = setInterval(function() {
                if (popup.closed) {
                    clearInterval(interval);
                    modalOverlay.style.display = 'none';
                    document.body.removeChild(modalOverlay);
                } else {
                    // 팝업창이 부모창 위에 있는지 확인
                    popup.focus();

                  
                }
            }, 100);
        }
    </script>
        
   
    
	</div>
</body>
  
</html>

