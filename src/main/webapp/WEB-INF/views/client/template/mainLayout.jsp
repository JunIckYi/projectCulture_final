<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> --%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="icon" href="/resources/image/common/icon1.png">

    <title><tiles:getAsString name = "title" /></title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/dist/css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="/resources/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<!--     <script src="/resources/assets/js/ie-emulation-modes-warning.js"></script> -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
    
    
        <!-- css -->
    <link rel="stylesheet" href="/resources/assets/css/reset10.css">
    <link rel="stylesheet" href="/resources/assets/css/style10.css">
    <link rel="stylesheet" href="/resources/assets/css/swiper.css">
    <script type="text/javascript" src="/resources/js/jquery-3.7.0.min.js"></script>
    <script type="text/javascript">

    $(function(){
    	
		$(".movieDetail").click(function(){
			let id = $(this).parents("tr").attr("data-num");
			console.log("id :", id);
			$("#id").val(id);
			$("#detail").attr({
				method : "post",
				action : "/movieDetail/"+id
			})
			$("#detail").submit();
		})
		
		$("#searchBtn").click(function(){
			$("#search").attr({
				method : "post",
				action : "/movieSearch"
			})
			$("#search").submit();
		})
		
		
	    var mySwiper = new Swiper('.swiper-container', {
	        // 스와이퍼 옵션 설정
	        // ...
	    });

// 	    // 각 슬라이드에 클릭 이벤트 리스너 추가
// 	    var swiperSlides = document.querySelectorAll('.swiper-slide');
// 	    swiperSlides.forEach(function(slide) {
// 	        slide.addEventListener('click', function() {
// 	            // 클릭한 슬라이드의 게시물 번호를 가져옵니다.
// 	            var movieId = this.querySelector('.moviepopNo').value;
// 	            console.log("클릭한 슬라이드의 게시물 번호: " + movieId);

// 	            // 가져온 게시물 번호를 이용하여 필요한 작업을 수행할 수 있습니다.
// 	            // 예를 들어, 해당 게시물 번호를 서버로 보내거나 페이지 이동을 처리할 수 있습니다.
// 	        });
// 	    });
	    
		// 각 .swiper-slide 내의 input[type="hidden"]에서 value 값을 가져와서 출력
	    $('.swiper-slide').click(function() {
	        var movieId = $(this).find('input[type="hidden"]').val();
	        console.log("클릭한 슬라이드의 영화 ID: " + movieId);
	        // 가져온 영화 ID를 서버로 보내거나 페이지 이동과 같은 추가 작업을 수행할 수 있습니다.
	    });







	})
    </script>
    
    <!--[if lt IE 9]> 
    <script src="assets/js/html5shiv.min.js"></script>
    <script type="text/javascript">
       alert("현재 브라우저는 지원하지 않습니다. 크롬 브라우저를 추천합니다.!");
    </script>-->
  
    
    <style type="text/css">

    </style>
    
    
    
  </head>

  <body>

<!--  Fixed navbar  -->
    <nav class="navbar navbar-default navbar-fixed-top"> 
 		<tiles:insertAttribute name="header" /> 
     </nav> 


    <!-- Begin page content -->
    <div class="contentLayout container" > 
     <!-- ////////////////////////////////////////////////////////// -->
       <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
                    <h1>
                        <a href="#">
                        	
                            <em><img src="/resources/assets/img/문화빛길Long.jpg" alt="culture" style="width : 150px" ></em>
<!--                             <strong><img src="/resources/assets/img/logo-sub.png" alt="LIFE THEATER"></strong> -->
                        </a>    
                    </h1>
                    <nav id="mNav">
                        <h2 class="ir_so">전체메뉴</h2>
                        <a href="#" class="ham"><span></span></a>
                    </nav>
                    <nav class="nav">
                        <ul class="clearfix">
                            <li><a href="#">영화</a></li>
<!--                             <li><a href="#">뮤지컬</a></li> -->
                            <li><a href="#">영화관</a></li>
<!--                             <li><a href="#">오시는길</a></li> -->
                            <li><a href="/board/boardList">게시판</a></li>
                            <li><a href="#">로그인</a></li>
                            <li><a href="#">회원가입</a></li>
                            <li><a href="/admin/loginPage">관리자</a></li>
                            <li><a href="#" onclick="event.preventDefault(); requestPay();">결제하기</a>
                        </ul>
                    </nav>    
                </div>
            </div>
        </div>
    </header>
    

   
 
    
   
     <section id="banner">
        <div class="banner_menu">
            <h2 class="ir_so">배너 영역</h2>
            <div class="container"  >
                <div class="row" >
                    <div class="bm_left">
                        <ul>
                            <li class="total"><a href="#">전체메뉴</a></li>
<!--                             <li class="line"><a href="#">필름 소사이어티</a></li> -->
<!--                             <li><a href="#">클래식 소사이어티</a></li> -->
                        </ul>
                    </div>
                    <div class="bm_right">
                        <ul>
<!--                             <li class="line"><a href="#">고객센터</a></li> -->
<!--                             <li class="line"><a href="">테스트</a></li> -->
<!--                             <li><a href="#">VIP</a></li> -->
                        </ul>
                        <ul>
<!--                             <li class="white"><a href="#">상영시간표</a></li> -->
<!--                             <li class="purple"><a href="#">빠른예매</a></li> -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider" >
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide ss1" style="background: url('https://image.tmdb.org/t/p/original${popular[0].backdrop_path}'); no-repeat; center; center; background-size: cover;" >
                        <div class="container">
                            <div class="row">
                                <h2>${popular[0].title}<em>${popular[0].original_title}</em></h2>
<!--                                  <p>차원이 다른 히어로가 온다!</p>   -->
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss2" style="background: url('https://image.tmdb.org/t/p/original${upcoming[0].backdrop_path}'); no-repeat; center; center; background-size: cover;">
                        <div class="container">
                            <div class="row">
                                <h2>${upcoming[0].title} <em>${upcoming[0].original_title}</em></h2>
<!--                                   <p>세상을 구하기 위해 세상을 파괴할 지도 모르는 선택을 해야 하는 천재 과학자의 핵개발 프로젝트.</p>   -->
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss3" style="background: url('https://image.tmdb.org/t/p/original${movies[0].backdrop_path}'); no-repeat; center; center; background-size: cover;">
                        <div class="container">
                            <div class="row">
                                <h2>${movies[0].title} <em>${movies[0].original_title}</em></h2>
<!--                                   <p>모두의 운명을 건 그들의 압도적 전투가 시작된다!</p>   -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
			<!-- ///////////////////    동영상    /////////////////////// &mute=1 -->  
<!--             <div class="swiper-container"> -->
<!--                 <div class="swiper-wrapper"> -->
<!--                     <div class="swiper-slide ss1" > -->
<!--                     	    <iframe -->
<!-- 						        src="https://www.youtube.com/embed/6fLFLPLu6gY?si=w0EisgYoqn4sfWUZ?rel=0&amp;autoplay=1&amp;loop=1;playlist=6fLFLPLu6gY&controls=0" frameborder="0"  -->
<!-- 						        title="YouTube video player" -->
<!-- 						        frameborder="0" -->
<!-- 						        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture;" -->
<!-- 						        style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" -->
						
<!-- 						    ></iframe> -->
<!--                         <div class="container"> -->
<!--                             <div class="row"> -->
<!--                                 <h2>이퀄라이저3<em>The Equalizer 3</em></h2> -->
<!-- <!--                                  <p>차원이 다른 히어로가 온다!</p> --> 
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="swiper-slide ss1" > -->
<!--                     	    <iframe -->
<!-- 						        src="https://www.youtube.com/embed/oPY476IF-ic?si=8hclQBXl6FK5rOb_?rel=0&amp;autoplay=1&mute=1&amp;loop=1;playlist=oPY476IF-ic&controls=0" frameborder="0" -->
<!-- 						        title="YouTube video player" -->
<!-- 						        frameborder="0" -->
<!-- 						        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture;" -->
<!-- 						        style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" -->
<!-- 						    ></iframe>  -->
<!--                         <div class="container"> -->
<!--                             <div class="row"> -->
<!--                                 <h2>마브카: 숲의 노래<em>MAVKA The Forest Song</em></h2> -->
<!--                                 <p>차원이 다른 히어로가 온다!</p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="swiper-slide ss1" > -->
<!--                     	    <iframe -->
<!-- 						        src="https://www.youtube.com/embed/Aos7vzZukWQ?si=66aRHiJSDwyKoARy?rel=0&amp;autoplay=1&mute=1&amp;loop=1;playlist=Aos7vzZukWQ&controls=0" frameborder="0" -->
<!-- 						        title="YouTube video player" -->
<!-- 						        frameborder="0" -->
<!-- 						        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture;" -->
<!-- 						        style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" -->
						
<!-- 						    ></iframe> -->
<!--                         <div class="container"> -->
<!--                             <div class="row"> -->
<!--                                 <h2>더 넌2<em>The Nun2</em></h2> -->
<!-- <!--                                 <p>차원이 다른 히어로가 온다!</p> --> 
<!--                             </div> -->
<!--                         </div> -->
                        
                       
<!--                     </div> -->
<!--                      </div>  -->
<!-- 		                <div class="swiper-pagination"></div> -->
<!-- 		                <div class="swiper-button-prev"></div> -->
<!-- 		                <div class="swiper-button-next"></div> -->
<!-- 		            </div> -->
		            
		            		<!-- ///////////////////    동영상 끝   /////////////////////// -->
                </div>
            </div>
        </div>
    </section>
    
<!--     <iframe width="560" height="315" src="https://www.youtube.com/embed/6fLFLPLu6gY?si=RWSKyDPCHWd-088t&amp;controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> -->
  
   
    <!-- //검색바 -->
<!--    <nav class="navbar navbar-light bg-light"> -->
<!--        <div class="container-fluid"> -->
<!--      	<form id="search" name="search"  class="d-flex"> -->
<!-- 			<input type="text" class="form-control" id="title1" name="title1" /> -->
<!-- 			<button type="button" class="btn btn-outline-success" id="searchBtn" name="searchBtn">검색</button> -->
<!-- 		</form> -->
<!--   		 </div> -->
<!--    </nav> -->
   
<!--    <form id="detail" name="detail" > -->
<!-- 	<input type="hidden" id="id" name="id" /> -->
<!--   </form> -->
	<div class="search1">
		<div class="searchBar">
<!-- 		class="d-flex" -->
		   <form id="search" name="search"  >  
			  <input type="text" placeholder="영화를 검색하세요." class="searchBarInput" name="title1" id="searchBarInputId"/>
			  <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" id="searchBtn" name="searchBtn" class="searchBarImg">
		  </form>
		</div>
	</div>


<!-- 	<form id="search" name="search" > -->
<!-- 		<input type="text" id="title" name="title" /> -->
		
<!-- 	</form> -->


        <!-- //검색바 끝 -->
   <div id="chartColor">
	   	<section id="movie">
	        <div class="container">
	            <div class="row">
	                <h2 class="ir_so">영화 예매</h2>
	                <div class="movie">
	                    <div class="movie_title">
	                        <ul class="clearfix">
	                            <li class="chart_color active movie_title_shape" ><a href="#">인기순위</a></li>
	                            <li class="movie_title_shape" ><a href="#">최신개봉작</a></li>
	                            <li class="movie_title_shape"><a href="#">상영예정작</a></li>
	                            <li class="movie_title_shape"><a href="#">최신개봉작</a></li>
	                        </ul>
	                    </div>
	                    <div class="movie_chart">
	                   		<div class="swiper-container2">
						        <div class="chart_cont1 swiper-wrapper">
						            <c:forEach var="moviepop" items="${popular}">
						                <div class="swiper-slide">
						                    <div class="poster">
						                        <figure>
						                            <img src="<c:out value='http://image.tmdb.org/t/p/w342${moviepop.poster_path}'/>" srcset="<c:out value='http://image.tmdb.org/t/p/w400${moviepop.poster_path} 2x'/>" alt="<c:out value='${moviepop.title}'/>" >
						                        </figure>
						                        <div class="rank"><strong><c:out value='${moviepop.rank}' /></strong></div>
						                        <div class="mx">
<!-- 						                            <span class="icon m ir_pm">MX</span> -->
<!-- 						                            <span class="icon b ir_pm">Boutique</span> -->
						                            <!-- 필요한 정보를 여기에 추가하세요 -->
						                        </div>
						                    </div>
						                    <div class="infor">
						                        <h3>
	<!-- 					                            <span class="icon all ir_pm">전체관람가</span>  -->
						                            <strong><c:out value='${moviepop.title}'/></strong>
						                        </h3>
						                        <div class="infor_btn" >
<!-- 						                            <a href="/admin/loginPage" class="detailInfo">상세정보</a> -->
<!-- 						                            <a href="#">예매하기</a> -->
						                        </div>
						                        <form id="moviepopNo">
						                        	<input type="hidden" id="mpopNo" name="mpopNo" value="${moviepop.id}"  />
						                        </form>
						                        
						                    </div>
						                </div>
						            </c:forEach>
						        </div>
						    </div>
<!-- 	                        //chart_cont1 -->
	                        <div class="swiper-container2">
						        <div class="chart_cont2 swiper-wrapper">
						            <c:forEach var="movie" items="${movies}">
						                <div class="swiper-slide">
						                    <div class="poster">
						                        <figure>
						                            <img src="<c:out value='http://image.tmdb.org/t/p/w342${movie.poster_path}'/>" srcset="<c:out value='http://image.tmdb.org/t/p/w400${movie.poster_path} 2x'/>" alt="<c:out value='${movie.title}'/>" >
						                        </figure>
	<%-- 					                        <div class="rank"><strong><c:out value='${movie.rank}' /></strong></div> --%>
 						                        <div class="mx"> 
<!--  						                            <span class="icon m ir_pm">MX</span>  -->
<!-- 						                            <span class="icon b ir_pm">Boutique</span>  -->
 						                          
 						                        </div> 
 						                    </div> 
 						                    <div class="infor"> 
 						                        <h3> 
 						                            <span class="icon all ir_pm">전체관람가</span>  
						                            <strong><c:out value='${movie.title}'/></strong>
 						                        </h3> 
 						                        <div class="infor_btn"  > 
<!--  						                            <a href="/admin/loginPage">상세정보</a>  -->
<!--  						                            <a href="/admin/loginPage">예매하기</a>  -->
 						                        </div> 
 						                        <form id="movieNo"> 
						                        	<input type="hidden" id="mNo" name="mNo" value="${movie.id}" />
 						                        </form> 
 						                    </div> 
 						                </div> 
						            </c:forEach>
 						        </div> 
 						    </div> 
	                        <!-- //chart_cont2-->
	                        
	                     <div class="swiper-container2">
						        <div class="chart_cont3 swiper-wrapper">
						            <c:forEach var="movieup" items="${upcoming}">
						                <div class="swiper-slide">
						                    <div class="poster">
						                        <figure>
						                            <img src="<c:out value='http://image.tmdb.org/t/p/w342${movieup.poster_path}'/>" srcset="<c:out value='http://image.tmdb.org/t/p/w400${movieup.poster_path} 2x'/>" alt="<c:out value='${movieup.title}'/>" >
						                        </figure>
	<%-- 					                        <div class="rank"><strong><c:out value='${loop.index + 1}' /></strong></div> --%>
						                        <div class="mx">
<!-- 						                            <span class="icon m ir_pm">MX</span> -->
<!-- 						                            <span class="icon b ir_pm">Boutique</span> -->
<!-- 						                            필요한 정보를 여기에 추가하세요 -->
						                        </div>
						                    </div>
						                    <div class="infor">
						                        <h3>
	<!-- 					                            <span class="icon all ir_pm">전체관람가</span>  -->
						                            <strong><c:out value='${movieup.title}'/></strong>
						                        </h3>
						                        <div class="infor_btn">
						                        
<!-- 						                            <a href="/admin/loginPage">상세정보</a> -->
<!-- 						                            <a href="/admin/loginPage">예매하기</a> -->
						                        </div>
						                         <form id="movieUpNo">
						                        	<input type="hidden" id="mUpNo" name="mUpNo" value="${movieup.id}"  />
						                        </form>
						                    </div>
						                </div>
						            </c:forEach>
						        </div>
						    </div>
	                        <!-- //chart_cont3-->
	                        
	                       <div class="swiper-container2">
						        <div class="chart_cont4 swiper-wrapper">
						            <c:forEach var="movie" items="${movies}">
						                <div class="swiper-slide">
						                    <div class="poster">
						                        <figure>
						                            <img src="<c:out value='http://image.tmdb.org/t/p/w342${movie.poster_path}'/>" srcset="<c:out value='http://image.tmdb.org/t/p/w400${movie.poster_path} 2x'/>" alt="<c:out value='${movie.title}'/>" >
						                        </figure>
<%-- 						                        <div class="rank"><strong><c:out value='${movie.rank}' /></strong></div> --%>
						                        <div class="mx">
						                            <span class="icon m ir_pm">MX</span>
						                            <span class="icon b ir_pm">Boutique</span>
						                            <!-- 필요한 정보를 여기에 추가하세요 -->
						                        </div>
						                    </div>
						                    <div class="infor">
						                        <h3>
						                            <span class="icon all ir_pm">전체관람가</span> <strong><c:out value='${movie.title}'/></strong>
						                        </h3>
						                        <div class="infor_btn">
						                        
<!-- 						                            <a href="/admin/loginPage"></a> 
 						                            <a href="/admin/loginPage">예매하기</a> -->
						                        </div>
						                         <form id="movieNo">
						                        	<input type="hidden" id="mNo" name="m No" value="${movie.id}"  />
						                        </form>
						                    </div>
						                </div>
						            </c:forEach>
						        </div>
						    </div>
	                        <!-- //chart_cont4-->
	                        
	                        <!-- //chart_cont4 end-->
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>  
   
   </div>

    
    <!-- //movie -->
    
	
    
    <!-- 자바스크립트 라이브러리 -->
<!--     <script src="/resources/assets/js/jquery.min_1.12.4.js"></script> -->
    <script src="/resources/assets/js/modernizr-custom.js"></script>
    <script src="/resources/assets/js/ie-checker.js"></script>
    <script src="/resources/assets/js/swiper.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <script>
    	
        //배너 이미지 슬라이드
        var swiper = new Swiper('.swiper-container',{
            pagination: {
                el: '.swiper-pagination',
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            autoplay: {
                delay: 5000,
            },
        });
        
        //영화차트 이미지 슬라이드
        var swiper = new Swiper('.swiper-container2',{
            slidesPerView: 4,
            spaceBetween: 24,
            mousewheel: {
                invert: true,
            },
            keyboard: {
                enabled: true,
                onlyInViewport: false,
            },
            autoplay: {
                delay: 4000,
            },
            breakpoints: {
                600: {
                    slidesPerView: 1.4,
                    spaceBetween: 24
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 24
                },
                960: {
                    slidesPerView: 3,
                    spaceBetween: 24
                }
            }
        });
        
        //영화차트 탭 메뉴
        var movBtn = $(".movie_title > ul > li");    
        var movCont = $(".movie_chart > div");  

        movCont.hide().eq(0).show();

        movBtn.click(function(e){
            e.preventDefault();
            var target = $(this);         
            var index = target.index();  
            movBtn.removeClass("active");   
            target.addClass("active");    
            movCont.css("display","none");
            movCont.eq(index).css("display","block");
        });
    </script>
     
       
     <script>
        var IMP = window.IMP; 
        IMP.init("imp15631721"); 
      
        var today = new Date();   
        var hours = today.getHours(); // 시
        var minutes = today.getMinutes();  // 분
        var seconds = today.getSeconds();  // 초
        var milliseconds = today.getMilliseconds();
        var makeMerchantUid = hours +  minutes + seconds + milliseconds;
        

        function requestPay() {
            IMP.request_pay({
                pg : 'kakaopay',
                pay_method : 'card',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : '문화빛길',
                amount : 100,
                buyer_email : 'Iamport@chai.finance',
                buyer_name : '문화빛길',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456'
            }, function (rsp) { // callback
                if (rsp.success) {
                    console.log(rsp);
                } else {
                    console.log(rsp);
                }
            });
        }
    </script>
    
    <script type="text/javascript">
    	$(function(){
    		
    		$("#home").attr({class : "active"});
    	})
    </script>
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     <!-- ////////////////////////////////////////////////////////// -->
    <div id="bottomGap"> </div>
    

    <footer class="footer">
     	<tiles:insertAttribute name="footer" />
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
    <script src="/resources/dist/js/bootstrap.min.js"></script>
    
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<!--     <script src="/resources/assets/js/ie10-viewport-bug-workaround.js"></script> -->
  </body>
</html>