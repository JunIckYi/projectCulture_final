<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page trimDirectiveWhitespaces="true" %>


<%-- 	<c:set var="clientUri" value='${requestScope["javax.servlet.forward.request_uri"]}' /> --%>
<!--  	<div class="container"> -->
<!--         <div class="navbar-header"> -->
<!--           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> -->
<!--             <span class="sr-only">Toggle navigation</span> -->
<!--             <span class="icon-bar"></span> -->
<!--             <span class="icon-bar"></span> -->
<!--             <span class="icon-bar"></span> -->
<!--           </button> -->
<!--           <a class="navbar-brand" href="#">Project name</a> -->
<!--         </div> -->
<!--         <div id="navbar" class="collapse navbar-collapse"> -->
<!--           <ul class="nav navbar-nav"> -->
<%--             <li <c:if test="${clientUri eq '/'}">class="active"</c:if>><a href="/">Home</a></li> --%>
<%--             <li <c:if test="${fn:containsIgnoreCase(clientUri, '/board')}">class="active"</c:if>> --%>
<!--             	<a href="/board/boardList">게시판</a> -->
<!--             </li> -->
<!-- <!--             <li><a href=""></a>명소리스트</li> -->
<!-- <!--             <li><a href="#contact">Contact</a></li> --> -->
<%--             <li class="dropdown <c:if test="${fn:containsIgnoreCase(clientUri, '/data')}">active</c:if>"> --%>
<!--               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">공공데이터 <span class="caret"></span></a> -->
<!--               <ul class="dropdown-menu" role="menu"> -->
<!--                 <li><a href="/data/chungnamView">충남 명소 리스트</a></li> -->
<!--                 <li><a href="#">Another action</a></li> -->
<!--                 <li><a href="#">Something else here</a></li> -->
<!--                 <li class="divider"></li> -->
<!--                 <li class="dropdown-header">Nav header</li> -->
<!--                 <li><a href="#">Separated link</a></li> -->
<!--                 <li><a href="#">One more separated link</a></li> -->
<!--               </ul> -->
<!--             </li> -->
<!--           </ul> -->

<!--         </div>/.nav-collapse -->
<!--       </div> -->


    <meta charset="UTF-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="format-detection" content="telephone=no">
    <meta name="author" content="webstoryboy">



    <!-- css -->
    <link rel="stylesheet" href="/resources/assets/css/reset19.css">
    <link rel="stylesheet" href="/resources/assets/css/style19.css">
    <link rel="stylesheet" href="/resources/assets/css/swiper.css">
    
    <!-- 파비콘 -->
    <link rel="shortcut icon" href="assets/icons/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="/resources/assets/icons/favicon_72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="96x96" href="/resources/assets/icons/favicon_96.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/assets/icons/favicon_144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="192x192" href="/resources/assets/icons/favicon_192.png" />
    
    <!-- 페이스북 메타 태그 -->
    <meta property="og:title" content="메가박스 사이트 만들기" />
    <meta property="og:url" content="https://github.com/webstoryboy/megabox2019" />
    <meta property="og:image" content="https://webstoryboy.github.io/megabox2019/mega.jpg" />
    <meta property="og:description" content="메가박스 사이트 따라하면서 배우는 튜토리얼입니다." />
   
    <!-- 트위터 메타 태그 -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="메가박스 사이트 만들기">
    <meta name="twitter:url" content="https://github.com/webstoryboy/megabox2019/">
    <meta name="twitter:image" content="https://webstoryboy.github.io/megabox2019/mega.jpg">
    <meta name="twitter:description" content="메가박스 사이트 따라하면서 배우는 튜토리얼입니다.">
    
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
    
    <!-- HTLM5shiv ie6~8 -->
    <!--[if lt IE 9]> 
      <script src="assets/js/html5shiv.min.js"></script>
      <script type="text/javascript">
         alert("현재 브라우저는 지원하지 않습니다. 크롬 브라우저를 추천합니다.!");
      </script>
   <![endif]-->
</head>
<body>
    
    <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
                    <h1>
                        <a href="#">
                            <em><img src="/resources/assets/img/logo.png" alt="MEGABOX"></em>
                            <strong><img src="/resources/assets/img/logo-sub.png" alt="LIFE THEATER"></strong>
                        </a>    
                    </h1>
                    <nav id="mNav">
                        <h2 class="ir_so">메가박스 전체메뉴</h2>
                        <a href="#" class="ham"><span></span></a>
                    </nav>
                    <nav class="nav">
                        <ul class="clearfix">
                            <li><a href="#">영화</a></li>
                            <li><a href="#">큐레이션</a></li>
                            <li><a href="#">영화관</a></li>
                            <li><a href="#">특별관</a></li>
                            <li><a href="#">스토어</a></li>
                            <li><a href="#">이벤트</a></li>
                            <li><a href="#">로그인</a></li>
                        </ul>
                    </nav>    
                </div>
            </div>
        </div>
    </header>


