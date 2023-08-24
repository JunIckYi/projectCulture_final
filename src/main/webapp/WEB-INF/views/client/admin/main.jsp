<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/dist/css/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
   	<link rel="shortcut icon" href="/resources/image/icon1.png" />
	<link rel="apple-touch-icon" href="/resources/image/icon1.png" />

	<!--[if lt IE 9]>
		<script src="../js/html5shiv.js"></script>
	<![endif]-->

	
	<link rel="stylesheet" type="text/css" href="/resources/dist/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/resources/dist/css/bootstrap-theme.css" />
	
	<script type="text/javascript" src="/resources/dist/js/jquery-3.7.0.min.js"></script>
	<script type="text/javascript" src="/resources/dist/js/common.js"></script>
	<script type="text/javascript" src="/resources/dist/js/bootstrap.min.js"></script>

	<script type="text/javascript">
	$(function(){
			let errorMsg = "${errorMsg}";
			if(errorMsg!=""){
				alert(errorMsg);
				errorMsg = "";
			}
		
		
		  $("#loginBtn").click(function(){
			  if(!chkData("#a_id", "아이디를")) return;
			  else if(!chkData("#a_pwd", "비밀번호를")) return;
			  else{
			     $("#loginForm").attr({
			    	 "method":"post",
			    	 "action":"/admin/login"
			     });
                 $("#loginForm").submit();
				  
			  }
			  
		  });
		  
		  $("#logOutBtn").click(function(){
			  location.href = "/admin/logout"
			  
		  });
		  
	});  
	</script>
  </head>

  <body>

    <div class="container">
      <c:if test="${empty adminLogin}">
      	 <form class="form-signin" id="loginForm">
	    	<a><img src="/resources/image/cultureLogo.jpg" width="300"></a>
	         <h2 class="form-signin-heading">관리자 로그인</h2>
         <label for="a_id" class="sr-only">아이디</label> 
         <input type="text" name = "a_id" id="a_id" class="form-control" placeholder="아이디"> 
         
         <label for="a_pwd" class="sr-only">비밀번호</label> 
         <input type="password" name = "a_pwd" id="a_pwd" class="form-control" placeholder="비밀번호">
         <button class="btn btn-lg btn-primary btn-block" type="button" id="loginBtn">로그인</button>
      </form>
      </c:if>
      <c:if test = "${not empty adminLogin}">
         <h3>${adminLogin.a_name} 님 환영합니다.</h3>
         <br/>
         <button type = "button" id = "logOutBtn">로그아웃</button>
      </c:if> 
   </div>
   <!-- /container -->



    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>