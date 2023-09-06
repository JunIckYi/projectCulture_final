<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/client/admin/common/adminNavHead.jspf" %>

	<script type="text/javascript">
	 $(function(){
			$("#noticeWrite").click(function(){
				$("#notiup_data").attr({
					"method":"post",
					"action":"/notice/nBoardUpdateForm"
				})
	 			$("#notiup_data").submit();
	 		
	 		})
	 		
	 		$("#noticeDelete").click(function() {
	 			  if (confirm("비밀번호를 입력하세요.")) {
	 			    let mpw = prompt("비밀번호");
	 			    
	 			    if(mpw !== null){
	 			       $("#mpw").attr("value",mpw); // #mpw 요소의 value 값을 설정
		 			   let check = $("#mpw").val(); // #mpw 요소의 value 값을 가져옴
		 			   console.log(check); // #mpw 요소의 value 값을 콘솔에 출력
		 			    	$.ajax({
								url : "/notice/pwdConfirm",  //전송 url
								type : "post",                // 전송 시 method 방식
								data : $("#notiup_pw").serialize(),   //폼전체 데이터 전송
								dataType : "text",
								error : function(){             //실행시 오류가 발생하였을 경우
									alert('시스템 오류 입니다. 관리자에게 문의 하세요');
								},                            //정상적으로 실행이 되었을 경우
									success : function(resultData){
										let goUrl="";
										if(resultData == "실패"){
											alert ("비밀번호가 틀렸습니다.")
										}else if(resultData == "성공"){
											$("#notiup_data").attr({
												"method":"post",
												"action":"/notice/nboardDelete"
											})
								 			$("#notiup_data").submit();
											alert ("삭제 되었습니다.")
											
										}
										
									}
								});
	 			    	
	 			    }
	 			  } else {
	 			    // 사용자가 취소를 눌렀을 때 처리할 내용 추가
	 			  }
	 			});
			
			$("#noticeGoback").click(function(){
				location.href = "/notice/board"
			});

	
		
	}); 
	 
	</script>
	
	
	<style type="text/css">
     	.contentContainer{
     		position : relative;
     		padding-top: 20px;
     		width : 1100px;
     		height : 900px;
     		top : 50px;
     	}
     	.aa{background-color: white
     		
     	}
     	.totalCover{
     	background-color: white
     	}
     	
     	
     	
    </style>
	
	</head>
	<body class="d-flex flex-column min-vh-100">
	<%@ include file="/WEB-INF/views/client/admin/common/adminNav.jspf" %>

	<form name="notiup_data" id="notiup_data" method="post">
		<input type="hidden" id="noc_num" name="noc_num" value="${detail.noc_num}">
	</form>
	<form name="notiup_pw" id="notiup_pw" method="post">
		<input type="hidden" id="mpw" name="mpw" value="">
	</form>
	

	<div class="container contentContainer totalCover">
		<div class="contentTit page-header">
			<h3 class="text-center" >${detail.noc_title}</h3>
		</div>
		<div class="contentTB text-center">
			<table class="table table-bordered table-hover aa">
				<tbody>
					<tr>
						<td class="col-md-3">작성자 : ${detail.mid}</td>
						<td class="col-md-3 text-left">관리자 (조회수: ${detail.readcnt})</td>
						<td class="col-md-3">작성일</td>
						<td class="col-md-3 text-left">${detail.noc_write_date}</td>
					</tr>
					<!-- 이 부분에 추가한 CSS 클래스 적용 -->
					<tr class="table-tr-height">
						<td colspan="4" class="col-md-8 text-left">${detail.noc_content}</td>
					</tr>
				</tbody>
			</table>
			<div>
				<button type="button" class="btn btn-primary" id="noticeWrite">수정</button>
				<button type="button" class="btn btn-primary" id="noticeDelete">삭제</button>
				<button type="button" class="btn btn-primary" id="noticeGoback">목록</button>
			</div>



		</div>
	</div>
	
	
<!-- 	<script src="/resources/plugins/bower_components/jquery/dist/jquery.min.js"></script> -->
    <!-- Bootstrap tether Core JavaScript -->
    <script src="/resources/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/app-style-switcher.js"></script>
    <script src="/resources/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!--Wave Effects -->
    <script src="/resources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="/resources/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="/resources/js/custom.js"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="/resources/plugins/bower_components/chartist/dist/chartist.min.js"></script>
    <script src="/resources/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="/resources/js/pages/dashboards/dashboard1.js"></script>





<%-- 	<%@ include file="/WEB-INF/views/template/footer.jsp"%> --%>
	</body>
</html>