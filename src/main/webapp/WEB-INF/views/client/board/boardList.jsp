<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/client/common/common.jspf" %>


<script type="text/javascript">
	$(function(){
		  $("#insertFormBtn").click(function(){
			  location.href="/board/writeForm";
		  });
	});



</script>


</head>
<body>

	<div class="container">
		
		
		<%-- ===============================리스트 시작 ============================= --%>
		<div id="boardList" class="table-height">
			<table summary="게시판 리스트" class="table table-striped">
				<thead>
					<tr>
						<th data-value = "b_num" class="order text-center col-md-1">글번호</th>
						<th class="text-center col-md-4">글제목</th>
						<th class="text-center col-md-2">작성자</th>
						<th data-value = "d_date" class="order-mo-1">날짜</th>
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
									<td class="text-left">${board.b_date}</td>									
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