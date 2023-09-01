<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ include file="/WEB-INF/views/client/common/common.jspf" %>

	<link rel="stylesheet" type="text/css" href="/resources/css/chungnam.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/lightbox.css">
	<script type="text/javascript" src="/resources/js/lightbox.min.js"></script>


<script type="text/javascript">

function template(mng_no, local_nm, type, nm, nm_sub, desc, list_img) {
	let $ul = $('#list');
	
	let $element = $("#item-template").clone().removeAttr('id');
	$element.attr('data-mngno', mng_no);
	
	$element.find(".item-light > a").attr({"href":list_img,"title":nm_sub});
	$element.find(".item-light > a > img").attr("src", list_img);
		
//		$element.find(".item-type").html(type);
	$element.find(".item-title").html(nm);
	$element.find(".item-sub").html(nm_sub);
//		$element.find(".item-content").html(desc);
		
	$ul.append($element);
}
		
		
	




$(function(){
	
	
	$(".contentLayout .page-header h1").html("충남관광 - 관광명소");
	
	$.ajax({
		url : "/data/chungnamList",
		type : "get",
		dataType : "xml",
		error : function(xhr, textStatus, errorThrown){
			alert(textStatus + "/" + xhr.status + "/" + errorThrown);
		},
		success : data =>{
			$(data).find('item').each(function(){
				let mng_no = $(this).find("mng_no").text();
				let local_nm = $(this).find("local_nm").text();
				let type = $(this).find("type").text();
				let nm = $(this).find("nm").text();
				let nm_sub = $(this).find("nm_sub").text();
				let desc = $(this).find("desc").text();
				let list_img = $(this).find("list_img").text();
				console.log(mng_no, local_nm, type, nm, nm_sub, desc, list_img);
				template(mng_no, local_nm, type, nm, nm_sub, desc, list_img);
			});
		}
	})
})



</script>


</head>
<body>

<!--  	<div class="contentTB text-center"> -->

<!--         <table class="table table-bordered"> -->
<!--             <thead> -->
<!--                 <tr> -->
<!--                     <th>번호</th> -->
<!--                     <th>지역</th> -->
<!--                     <th>유형</th> -->
<!--                     <th>명칭</th> -->
<!-- <!--                     <th>서명</th> --> 
<!--                     <th>설명</th> -->
<!--                     <th>이미지</th> -->
<!--                 </tr> -->
<!--             </thead> -->
<!--             <tbody id="dataBody"> -->
<!--                 데이터는 여기에 동적으로 추가될 것입니다. -->
<!--             </tbody> -->
<!--         </table> -->
<!--     </div> -->
    
<!--     <div class="contentContainer container"> -->
<!-- 		<div class="row" id="list"> -->
<!-- 			<div id="item-template" class="col-sm-6 col-md-4 item"> -->
<!-- 				<div class="thumbnail"> -->
<!-- 					<span class="item-light"><a href="#" data-lightbox="roadtrip"><img /></a></span> -->
<!-- 					<div class="caption"> -->
<!-- 						<h3 class="item-title"></h3> -->
<!-- 						<p class="item-sub"></p> -->
<!-- 						<p class="item-btn"><a class="btn btn-primary detailBtn" role="button">상세정보</a></p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!--     </div> -->
    <div class="contentContainer container">
		<div class="row" id="list">
			<div id="item-template" class="col-sm-6 col-md-4 item">
				<div class="thumbnail">
					<span class="item-light"><a href="#" data-lightbox="roadtrip"><img /></a></span>
					<div class="caption">
						<h3 class="item-title"></h3>
						<p class="item-sub"></p>
						<p class="item-btn"><a class="btn btn-primary detailBtn" role="button">상세정보</a></p>
					</div>
				</div>
			</div>
		</div>
    </div>
    
    
    

</body>
</html>