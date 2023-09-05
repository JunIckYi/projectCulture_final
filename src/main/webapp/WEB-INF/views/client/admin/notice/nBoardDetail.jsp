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
	

	<div class="container contentContainer totalCover">
		<div class="contentTit page-header">
			<h3 class="text-center" >${detail.noc_title}</h3>
		</div>
		<div class="contentTB text-center">
			<table class="table table-bordered table-striped table-hover aa">
				<tbody>
					<tr>
						<td class="col-md-3">작성자 (${detail.mno})</td>
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