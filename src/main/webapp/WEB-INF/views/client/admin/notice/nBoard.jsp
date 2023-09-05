<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/client/admin/common/adminNavHead.jspf" %>

<title>공지 게시판</title>
<script type="text/javascript">
$(function(){
	let word = "<c:out value='${noticeVO.keyword}'/>"; 
	if(word!=""){
		$("#keyword").val('<c:out value='${noticeVO.keyword}'/>');
		$("#keyword").focus();
		$("#search").val('<c:out value='${noticeVO.search}'/>');
		
		if($("#search").val()!='noc_content'){
			//:contais() 는 특정 텍스트를 포함한 요소 반환
			if($("#search").val()=='noc_title') value = "#list tr td.goDetail";
			console.log($(value+":contains('"+word+"')").html());
			$(value+":contains('"+word+"')").each(function (){
				let regex = new RegExp(word, 'gi');
				$(this).html($(this).html().replace(regex,"<span class='required'>"+word+"</span>"));
			})
		}
	}
	
	
	$(".goDetail").click(function(){
		let noc_num = $(this).parents("tr").attr("data-num");
		console.log("noc_num :", noc_num);
		$("#noc_num").val(noc_num);
		$("#detail").attr({
			method : "post",
			action : "/notice/boardDetail"
		})
		$("#detail").submit();
	})
	
	$("#searchData").click(function() {
		if(!chkData("#keyword", "검색어를")) return;
		else {
			$("#pageNum").val(1); //페이지 초기화
			goPage(); 
		}
	})

	$("#keyword").bind("keydown", (e) => {
		if(e.keyCode ==13) {
			e.preventDefault();
		}
	})
	$("#search").change(() => {
		$("#keyword").focus();
	})
	
	$(".page-item a").click(function(e) {
		e.preventDefault();
		$("#f_search").find("input[name='pageNum']").val($(this).attr("href"));
		goPage();
	})
	
    $("#insertFormBtn").click(function(){
        location.href="/board/writeForm";
     });
})

function goPage(){
	$("#f_search").attr({
		"method":"get",
		"action":"/notice/board"
	})
		$("#f_search").submit();
}
	</script>
    <style type="text/css">
     	.required{ color: red; background-color:  yellow;}
		textarea{resize: none;}
		.noticeboard{
		position: relative;
		width : 1100px;
		margin: 10px auto;
		background-color: white;
		}
 		#f_search { 
 		position: relative;
 		right: 80px;
 		top:18px;
 		bottom: 10px;
 		} 


    </style>
</head>
<body class="d-flex flex-column min-vh-100">
		
		<%@ include file="/WEB-INF/views/client/admin/common/adminNav.jspf" %>
		

	
	<div class="container total-cover">

		
		<div id="boardSearch" class="d-flex justify-content-end"> 
		<form id="f_search" name="f_search" class="form-inline">
			<%-- 페이징 처리를 위한 파라미터 --%>
			<input type="hidden" name="pageNum" id="pageNum" value="${paging.cvo.pageNum }">
			<input type="hidden" name="amount" id="amount" value="${paging.cvo.amount }">
			<div class="d-inline-flex text-end">
				 <label></label>
				 <select id="search" name="search"  class="form-control form-control-sm w-auto">
<!-- 							<option value="all">전체조회</option> -->
							<option value="noc_title">제목</option>
							<option value="noc_content">내용</option>
				</select>
				<input type="text" name="keyword" id="keyword" placeholder="검색어를 입력하세요" class="form-control form-control-sm w-auto" />
				<button type="button" id="searchData" class="btn btn-primary ">검색</button>
			</div>
		</form>
		</div>
		<br />
<!-- 		<div class="page-header"><h3 class="text-center">게시판 리스트</h3></div> -->
		
		<form id="detail" name="detail">
			<input type="hidden" id="noc_num" name="noc_num" />
		</form>

		<div id="boardList" class="table-height noticeboard">
			<table summary="게시판 리스트" class="table table-striped" >
				<thead>
					<tr>
						<th data-value="b_num" class="order text-center col-md-1" >글번호</th>
						<th class="text-center col-md-5">글제목</th>
<!-- 						<th class="text-center col-md-2">작성자</th> -->
						<th data-value="b_date" class="order col-md-2">작성일</th>
						<th class="text-center col-md-1">조회수</th>
					</tr>
				</thead>
				<tbody id="list" class="table-striped" >
					<c:choose>
						<c:when test="${not empty notice}" >
							<c:forEach var="notice" items="${notice}" varStatus="status"> 
								<tr class="text-center" data-num="${notice.noc_num}">
 									<td>${notice.noc_num}</td>
									<td class="goDetail text-start"> ${notice.noc_title} </td>
<!-- 									<td class="name">관리자</td> -->
									<td class="text-start"> ${notice.noc_write_date}</td>
									<td class="text-center">${notice.readcnt}</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr><td colspan="5" class="tac text-center">등록된 게시글이 없습니다.</td></tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
		
		

		<%-- ================ 리스트 종료 ================ --%>

		<div class="contentBtn text-center">
			<input type="button" value="글쓰기" id="insertformBtn" class="btn btn-primary" />
		</div>
		</br>
		
		<%-- ================ 페이징 출력 ================ --%>
		<div class="d-flex justify-content-center">
			<ul class="pagination ">
				<!-- 이전 바로가기 10개 존재 여부 확인 -->
				<c:if test="${paging.prev }">
					<li class="page-item">
						<a class="page-link" href="${paging.initpage}">처음으로</a>
					</li>
					<li class="page-item previous">
						<a class="page-link" href="${paging.startPage -1}">이전</a>
					</li>
				</c:if>
				
				<!-- 바로가기 번호 출력 -->
				<c:forEach var="num" begin="${paging.startPage }" end="${paging.endPage }">
					<li class="page-item ${paging.cvo.pageNum == num ? 'active':'' }">
						<a class="page-link" href="${num}">${num }</a>
					</li>
				</c:forEach>
				
				<!-- 다음 바로가기 10개 존재 여부 확인 -->
				<c:if test="${paging.next }">
					<li class="page-item next">
						<a class="page-link" href="${paging.endPage+1 }">다음</a>
					</li>
				</c:if>
			</ul>	
		</div>

		<%-- ================ 글쓰기 버튼 ================ --%>

		<c:if test="${empty adminLogin }">
			
		</c:if>


	</div>




<%-- 		<%@ include file="/WEB-INF/views/template/footer.jsp"%> --%>
 	<script src="/resources/plugins/bower_components/jquery/dist/jquery.min.js"></script>
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




</body>
</html>