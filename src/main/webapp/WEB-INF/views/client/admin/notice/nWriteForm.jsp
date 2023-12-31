<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/client/admin/common/adminNavHead.jspf" %>

	<script type="text/javascript">

   	$(function(){
   		$("#writeConfirm").click(function(){
   		    if(!chkData("#noc_title", "제목을")) return;
   			else if(!chkData("#noc_content", "내욜을")) return;
   			else{ 
				$("#notiWrite").attr({
					"method":"post",
					"action":"/notice/nBoearInsert"
				})
				$("#notiWrite").submit();
					
   			}	
   			
   			
   		});

    	$("#noticeGoback").click(function(){
    		location.href = "/notice/board"
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
     	td{
     	font-size: 13px;
     	}
     	.tsize{
     	font-size: 20px;
     	}
     	
    </style>
</head>
<body>


	<body class="d-flex flex-column min-vh-100">
	<%@ include file="/WEB-INF/views/client/admin/common/adminNav.jspf" %>
	
	
	

	<div class="container contentContainer totalCover">
		<form name="notiWrite" id="notiWrite" method="post">
			<div class="contentTit page-header">
				<h3 class="text-center" ><input type="text" class="form-control col-lg-8 text-left tsize" id="noc_title" name="noc_title" placeholder="[공지] 제목" ></h3>
			</div>
			<div class="contentTB text-center">
				<table class="table table-bordered table-striped table-hover aa">
					<tbody>
						<!-- 이 부분에 추가한 CSS 클래스 적용 -->
						<tr class="table-tr-height">
							<td colspan="4" class="col-md-10 text-left">
							<textarea rows="10" cols="10" class="form-control" style="resize: none" id="noc_content" name="noc_content" placeholder="공지 내용을 입력하세요." ></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<div>
				<input type="hidden" id="mno" name="mno" value="${adminLogin.mno}" >
				<button type="button" class="btn btn-primary" id="writeConfirm">확인</button>
				<button type="button" class="btn btn-primary" id="noticeGoback">목록</button>
				</div>
			</div>
		</form>
	</div>
	
	
	
	

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
<!--     <script src="/resources/plugins/bower_components/chartist/dist/chartist.min.js"></script> -->
<!--     <script src="/resources/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script> -->
<!--     <script src="/resources/js/pages/dashboards/dashboard1.js"></script> -->


</body>
</html>