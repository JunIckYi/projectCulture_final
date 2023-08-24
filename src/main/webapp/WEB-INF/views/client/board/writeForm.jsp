<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/client/common/common.jspf" %>

<script type="text/javascript">
	$(function(){
		  $("#boardInsertBtn").click(function(){
			  if(!chkData("#b_name", "작성자를")) return;
			  else if(!chkData("#b_title", "제목을")) return;
			  else if(!chkData("#b_content", "내용을")) return;
			  else  if(!chkData("#b_pwd", "비밀번호를")) return;
			  else{
			     $("#f_writeForm").attr({
			    	 "method":"post",
			    	 "action":"/board/boardInsert"
			     });
                 $("#f_writeForm").submit();
              }
		  });
		  
		  $("#boardCancelBtn").click(function(){
			  $("#f_writeForm").each(function(){
				this.reset();  
			  });
		  });
		  
		  $("#boardListBtn").click(function(){
			  location.href="/board/boardList";
		  });
	});



</script>



</head>
<body>

	<div>
		<form class="form-horizontal" id="f_writeForm">
		<div class="container">
<!-- 			<div class="text-center"><h2>입력페이지</h2></div> -->
			<div class="form-group">
				<label for="author" class="col-sm-2 control-label">작성자</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="b_name" name="b_name" placeholder="작성자 입력" maxlength="20">
				</div>
			</div>
			<div class="form-group">
				<label for="title" class="col-sm-2 control-label">글제목</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="b_title" name="b_title" placeholder="글제목 입력">
				</div>
			</div>
			<div class="form-group" class="col-sm-2 control-label">
				<label class="col-sm-2 control-label">글내용</label>
				<div class="col-sm-10">
				<textarea rows="10" cols="10" class="form-control" style="resize: none" name="b_content" id="b_content"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="passwd" class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10">
				<input type="password" class="form-control" id="b_pwd" name="b_pwd" placeholder="비밀번호 입력">
				</div>
			</div>
			<div class="contentBtn text-right">
				<input type="button" id="boardInsertBtn"  class="btn btn-primary btn-sm" value="저장">
				<input type="button" id="boardCancelBtn"  class="btn btn-primary btn-sm" value="취소">
				<input type="button" id="boardListBtn"  class="btn btn-primary btn-sm" value="목록">
		</div>
		</div>
		</form>
	</div>

</body>
</html>