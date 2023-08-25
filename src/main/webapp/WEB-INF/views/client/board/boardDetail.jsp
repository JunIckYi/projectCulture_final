<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ include file="/WEB-INF/views/client/common/common.jspf" %>


	</head>
	<body>
	<div class="container" >


		<form name="f_data" id="f_data" method="post">
			<input type="hidden" name="num" value="${detail.b_pwd}">
		</form>

		<div id="boardPwdBut" class="row text-center">
<!-- 		<div id="pwdChk" class="col-md-9 text-left"> -->
<!-- 		<form name="f_pwd" id="f_pwd" class="form-inline"> -->
<%-- 			<input type="hidden" name="num" value="${detail.num}"> --%>
<!-- 			<label for="passwd" id="1_fwd">비밀번호 : </label> -->
<!-- 			<input type="password" name="passwd" id="passwd" class="form-control"/> -->
			
<!-- 			<button type="button" id="pwdBut" class="btn btn-default btn-sm">확인</button> -->
<!-- 			<button type="button" id="pwdButCancel" class="btn btn-default btn-sm">취소</button> -->
<!-- 			<span id="msg"></span>	 -->
			
<!-- 		</form> -->
<!-- 		</div> -->

		
			<table class="table table-striped table-bordered">
				<tbody>
					<tr>
						<td class="col-md-3">글번호</td>
						<td class="col-md-3 text-left">${detail.b_num} <label>(조회수
								: ${detail.readcnt})</label></td>
						<td class="col-md-3">작성일</td>
						<td class="col-md-3 text-center">${detail.b_date}</td>
					</tr>
					<tr>
						<td class="col-md-3">작성자</td>
						<td colspan="3" class="col-md-9 text-left">${detail.b_name}</td>
					</tr>
					<tr>
						<td class="col-md-3">글제목</td>
						<td colspan="3" class="col-md-9 text-left">${detail.b_title}</td>
					</tr>
					<tr  class="table-height">
						<td class="text-valign">글내용</td>
						<td colspan="3" class="text-left">${detail.b_content}</td>
				
					</tr>

			
				</tbody>
			</table>
			<div class="text-right" >
				<div class="text-right" >
					<button type="button" id="updateBtn" class="btn btn-primary btn-sm">수정</button>
					<button type="button" id="deleteBtn" class="btn btn-primary btn-sm">삭제</button>
					<button type="button" id="boardReply" class="btn btn-primary btn-sm">답변</button>
					<button type="button" id="listBtn" class="btn btn-primary btn-sm">목록</button>
				</div>
			</div>
		</div>
	</div>
	

	
	
	
	</body>
</html>