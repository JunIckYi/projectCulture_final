<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ include file="/WEB-INF/views/client/common/common.jspf" %>

<script type="text/javascript">
	$(function(){
		$(".contentLayout .page-header h1").html("충남광광 - 관광명소");
		
		$.ajax({
			url : "/data/chungnamList",
			type : "get",
			dataType : "xml",
			success : data =>{
				$(data).find('item').each(function(){
					let mng_no = $(this).find("mng_no").text();
					let local_nm = $(this).find("local_nm").text();
					let type = $(this).find("type").text();
					let nm = $(this).find("nm").text();
					let nm_sub = $(this).find("nm_sub").text();
					let desc = $(this).find("desc").text();
					let list_img = $(this).find("list_img").text();
					
					  // 데이터를 테이블에 추가
                    $("#dataBody").append(
                            "<tr>" +
                            "<td>" + mng_no + "</td>" +
                            "<td>" + local_nm + "</td>" +
                            "<td>" + type + "</td>" +
                            "<td>" + nm + "</td>" +
                            "<td>" + nm_sub + "</td>" +
                            "<td>" + desc + "</td>" +
                            "<td><img src='" + list_img + "' alt='" + nm + "'></td>" +
                            "</tr>"
                    );
				
				});
				
			},
			error : (xhr, textStatus, errorThrown) =>{
				alert(textStatus + " ( HTTP-" +xhr.status + " / " + errorThrown + " ) ");
			}
		});
		
		
		
	});



</script>


</head>
<body>

 	<div class="contentTB text-center">

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th style="wight: 100px;">번호</th>
                    <th>지역</th>
                    <th>유형</th>
                    <th>명칭</th>
                    <th>서명</th>
                    <th>설명</th>
                    <th>이미지</th>
                </tr>
            </thead>
            <tbody id="dataBody">
                <!-- 데이터는 여기에 동적으로 추가될 것입니다. -->
            </tbody>
        </table>
    </div>

</body>
</html>