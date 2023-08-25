<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/client/common/common.jspf" %>


<script type="text/javascript">
	$(function(){
		  $("#insertFormBtn").click(function(){
			  location.href="/board/writeForm";
		  });
		  
		  /* 제목 클릭 시 살세 페이지 이동을 위한 처리 이벤트 */
		  $(".goDetail").click(function(){
			  let b_num = $(this).parents("tr").attr("data-num");
			  $("#b_num").val(b_num);
			  console.log("글번호 : "+b_num);
			  //세세 페이지로 이동하기위해 form추가 (id=: detailForm)
			  $("#detailForm").attr({
				  "method" : "get",
				  "action" : "/board/boardDetail"
			  });
			  $("#detailForm").submit();
		  });
		  
	});



</script>


</head>
<body>

	<div class="container">
		<form id="detailForm">
			<input type="hidden" id="b_num" name="b_num" />
		</form>
		
		<%-- ===============================리스트 시작 ============================= --%>
		<div id="boardList" class="table-height">
			<table summary="게시판 리스트" class="table table-striped">
				<thead>
					<tr>
						<th data-value = "b_num" class="order text-center col-md-1">글번호</th>
						<th class="text-center col-md-6">글제목</th>
						<th class="text-center col-md-2">작성자</th>
						<th data-value = "d_date" class="text-center order-md-1">날짜</th>
						<th class="text-center col-md-1">조회수</th>
					</tr>
				</thead>
				<tbody id="list" class="table-striped" >
					<!-- 데이터 출력 -->
					<c:choose>
						<c:when test="${not empty boardList}">
							<c:forEach var="board" items="${boardList}" varStatus="status">
								<tr class="text-center" data-num="${board.b_num}">
									<td>${board.b_num}</td>
									<td class="goDetail text-left">${board.b_title}</td>
									<td class="name">${board.b_name}</td>
									<td class="text-center">${board.b_date}</td>									
									<td class="text-center">${board.readcnt}</td>
								</tr>
							</c:forEach>	
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5" class="tac text-center">등록된 게시글이 존재하지 않습니다.</td> 
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>		
		</div>
		<%-- ===========================================리스트 종료============================================= --%>
		
		<%-- ======================================  글쓰기 버튼 출력 시작  ====================================== --%>
		<div class="contentBtn text-right" >
			<input type="button" value="글쓰기"  id="insertFormBtn" class="btn btn-success"/>
		</div>
		<%-- ======================================  글쓰기 버튼 출력 종료  ====================================== --%>
	
	
		
	
	</div>
</body>
</html>