<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ include file="/WEB-INF/views/client/common/common.jspf" %>
<script type="text/javascript">
   $(function(){
        $("#boardUpdateBtn").click(function(){
           if(!chkData("#b_title", "제목을")) return;
           else if(!chkData("#b_content", "내용을")) return;
           else  if(!chkData("#b_pwd", "비밀번호를")) return;
           else{
              $("#f_updateForm").attr({
                 "method":"post",
                 "action":"/board/boardUpdate"
              });
                 $("#f_updateForm").submit();
              }
        });
        
        $("#boardCancelBtn").click(function(){
           $("#f_updateForm").each(function(){
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

	<div class="container">
      <div class="contentTB text-center">
         <form id="f_updateForm" name="f_updateForm">
            <input type="hidden" id="b_num" name="b_num" value="${updateData.b_num}" />
            
            <table class="table table-bordered">
               <tbody>
                  <tr>
                     <td class="col-md-3">글번호</td>
                     <td class="text-left col-md-3">${updateData.b_num}</td>
                     <td class="col-md-3">작성일</td>
                     <td class="text-left col-md-3">${updateData.b_date}</td>
                  </tr>
                  <tr>
                     <td>작성자</td>
                     <td colspan="3" class="text-left">${updateData.b_name}</td>
                  </tr>
                  <tr>
                     <td>글제목</td>
                     <td colspan="3" class="text-left">
                        <input type="text" name="b_title" id="b_title"
                        value = "${updateData.b_title}" class="form-control" />
                     </td>
                  </tr>
                  <tr class="table-tr-height">
                     <td>내용</td>
                     <td colspan="3" class="text-left">
                        <textarea name="b_content" id="b_content" class="form-control" rows="8">${updateData.b_content}</textarea>
                     </td>
                  </tr>
                  <tr class="form-inline">
                     <td>비밀번호</td>
                     <td colspan="3" class="text-left">
                     	<input type="password" name="b_pwd" id="b_pwd" class="form-control" maxlength="18" />
                     	<label>수정할 비밀번호를 입력해 주세요.</label>
                     </td>
                  </tr>
                  
               </tbody>
            </table>
         </form>
      </div>
   </div>
		<div class="contentBtn text-right">
            <input type="button" id="boardUpdateBtn"  class="btn btn-primary btn-sm" value="저장">
            <input type="button" id="boardCancelBtn"  class="btn btn-primary btn-sm" value="취소">
            <input type="button" id="boardListBtn"  class="btn btn-primary btn-sm" value="목록">
      </div>

	

	

</body>
</html>