<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/client/common/common2.jspf" %>
<%@ include file="/WEB-INF/views/client/admin/common/adminNavHead.jspf" %>
	<script type="text/javascript">
	
	</script>
<%@ include file="/WEB-INF/views/client/admin/common/adminNav.jspf" %>

            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title">Basic Table</h3>
                            <p class="text-muted">Add class <code>.table</code></p>
                            <div class="table-responsive">
                                <table class="table text-nowrap">
                                    <thead>
                                        <tr>
                                            <th class="border-top-0">#</th>
                                            <th class="border-top-0">First Name</th>
                                            <th class="border-top-0">Last Name</th>
                                            <th class="border-top-0">Username</th>
                                            <th class="border-top-0">Role</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Deshmukh</td>
                                            <td>Prohaska</td>
                                            <td>@Genelia</td>
                                            <td>admin</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Deshmukh</td>
                                            <td>Gaylord</td>
                                            <td>@Ritesh</td>
                                            <td>member</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Sanghani</td>
                                            <td>Gusikowski</td>
                                            <td>@Govinda</td>
                                            <td>developer</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Roshan</td>
                                            <td>Rogahn</td>
                                            <td>@Hritik</td>
                                            <td>supporter</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Joshi</td>
                                            <td>Hickle</td>
                                            <td>@Maruti</td>
                                            <td>member</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>Nigam</td>
                                            <td>Eichmann</td>
                                            <td>@Sonu</td>
                                            <td>supporter</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                
                
                	<%--============================================ 페이징 출력 시작 ======================================= --%>
			     <div class="text-center">
			        <ul class="pagination">
			           <!-- 이전 바로가기 10개 존재 여부를 prev 필드의 값으로 확인 -->
			           <c:if test="${pageMaker.prev}">
			              <li class="paginate_button previous">
			                 <a href="${pageMaker.startPage -1 }">Previous</a>
			              </li>
			           </c:if>
			           
			           <!-- 바로가기 번호 출력 -->
			           <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			              <li class="paginate_button ${pageMaker.cvo.pageNum == num ? 'active':'' }">
			                 <a href="${num}">${num}</a>
			              </li>
			           </c:forEach>
			           
			           <!-- 다음 바로가기 10개 존재 여부를 next 필드의 값으로 확인 -->
			           <c:if test="${pageMaker.next}">
			              <li class="paginate_button next">
			                 <a href="${pageMaker.endPage + 1 }">Next</a>
			              </li>
			           </c:if>
			        </ul>
			     </div>   
      
      <%-- ===========================================페이징 출력 종료============================================= --%>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center"> 2021 © Ample Admin brought to you by <a
                    href="https://www.wrappixel.com/">wrappixel.com</a>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="/resources/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="/resources/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="/resources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="/resources/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="/resources/js/custom.js"></script>

</body>
</html>