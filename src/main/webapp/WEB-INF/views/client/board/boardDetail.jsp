<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ include file="/WEB-INF/views/client/common/common.jspf" %>
<script type="text/javascript">
let buttonCheck = 0;
$(function(){
	$("#pwdChk").css("visibility","hidden");
	
	$("#updateFormBtn").click(function(){
		$("#pwdChk").css("visibility","visible");
		$("#msg").text("작성시 입력한 비밀번호를 입력해 주세요.").css("color","#000099");
		buttonCheck = 1;
	});
	
	$("#boardDeleteBtn").click(function(){
		$("#pwdChk").css("visibility","visible");
		$("#msg").text("작성시 입력한 비밀번호를 입력해 주세요.").css("color","#000099");
		buttonCheck = 2;
	});
	
	/*비밀번호 입력 양식 enter 제거*/
	$("#b_pwd").bind("keydown",function(event){
		if(event.keyCode === 13){      //값 비교 (true) 0 === "0" 갑과 자료형 비교
			event.preventDefault();
		}
		
	});
	
	/*비밀번호 확인 버튼 클릭 시 처리 이벤트*/
	$("#pwdBtn").click(function(){
		boardPwdConfirm();
		
		
	});
	
	/*글쓰기 버튼 글릭시 처리 이벤트 처리 이벤트*/
	$("#insertFormBtn").click(function(){
		location.href = "/board/writeForm"
	});
	
	$("#boardListBtn").click(function(){
		location.href = "/board/boardList"
	});
	
	$("#pwdButCancel").click(function(){
		buttonCheck = 0;
		$("#b_pwd").val("");
		$("#pwdChk").css("visibility","hidden");
	});
	
	/*비밀번호 확인 버튼 클릭시 실질적인 처리 함수*/
	function boardPwdConfirm(){
		if (!chkData('#b_pwd',"비밀번호를"))	return;
		//if (!formCheck('#b_pwd','#msg',"비밀번호를"))	return;
		else {	
			$.ajax({
				url : "/board/pwdConfirm",  //전송 url
				type : "post",                // 전송 시 method 방식
				data : $("#f_pwd").serialize(),   //폼전체 데이터 전송
				dataType : "text",
				error : function(){             //실행시 오류가 발생하였을 경우
					alert('시스템 오류 입니다. 관리자에게 문의 하세요');
				},                            //정상적으로 실행이 되었을 경우
				success : function(resultData){
					
					let goUrl="";         // 이동할 경로를 저장할 변수
					if(resultData == "실패"){     // 일치하지 않는 경우
						$("#msg").text("작성시 입력한 비밀번호가 일치하지 않습니다.").css("color","red");
						$("#b_pwd").select();
					}else if(resultData == "성공"){ // 일치할 경우
						$("#msg").text("");
						console.log("비밀번호 일치");
						
						if(buttonCheck==1){ // 수정버튼 클릭
							console.log("수정버튼 클릭");
							goUrl = "/board/updateForm";
							$("#f_data").attr("action",goUrl);
							$("#f_data").submit();
						} else if(buttonCheck==2){ // 삭제버튼 클릭
							console.log("삭제버튼 클릭 ");
							if(confirm("정말 삭제하시겠습니까?")){
								goUrl = "/board/boardDelete";
								$("#f_data").attr("method","post");
								$("#f_data").attr("action",goUrl);
								$("#f_data").submit();
							}
						}
					}
				}
			});
		}
		
	}	
	

	
	
	
	
	
});
</script>

	</head>
	<body>
	<div class="container" >


		<form name="f_data" id="f_data" method="get">
			<input type="hidden" name="b_num" value="${detail.b_num}">
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
				
				<div id="pwdChk" class="col-md-9 text-left">
					<form name="f_data" id="f_pwd" class="form-inline" method="post">
						<input type="hidden" name="b_num" value="${detail.b_num}">
						<label for="passwd" id="1_fwd">비밀번호 : </label>
						<input type="password" name="b_pwd" id="b_pwd" class="form-control"/>
						
						<button type="button" id="pwdBtn" class="btn btn-default btn-sm">확인</button>
						<button type="button" id="pwdButCancel" class="btn btn-default btn-sm">취소</button>
						<span id="msg"></span>	
						
					</form>
				</div>
					
					<button type="button" id="updateFormBtn" class="btn btn-primary btn-sm">수정</button>
					<button type="button" id="boardDeleteBtn" class="btn btn-primary btn-sm">삭제</button>
					<button type="button" id="insertFormBtn" class="btn btn-primary btn-sm">글쓰기</button>
					<button type="button" id="boardListBtn" class="btn btn-primary btn-sm">목록</button>
				</div>
			</div>
		</div>
	</div>
	

	
	
	
	</body>
</html>