<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="/WEB-INF/views/client/common/common.jspf" %> --%>
<%@ include file="/WEB-INF/views/client/admin/common/adminNavHead.jspf" %>




		<script type="text/javascript">
		    $(function(){
			  $("#updateBtn").click(function(){
				  let confirmed = confirm("정보를 수정하시겠습니까?");
				  
				  if(!chkData("#memail", "이메일을")) return;
				  else if(!chkData("#mpw", "비밀번호를")) return;
				  else if(!chkData("#mphone", "전화번호를")) return;
				  else if(!chkData("#mdepart", "부서를")) return;
				  else{  
					  if (confirmed) {
						     $("#mg_mp_update").attr({
						    	 "method":"post",
						    	 "action":"/admin/mgMyPageUpdate"
						     });
				         	 $("#mg_mp_update").submit();
						} else {
							 location.href="/admin/login";
						}
		        }

			  });
			  
			  $("#cancelBtn").click(function(){
				  location.href="/admin/login";
				  });
			});
			  
		// 	  $("#boardListBtn").click(function(){
		// 		  location.href="/board/boardList";
		// 	  });
		
		
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
                <!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-12">
                        <div class="white-box">
                            <div class="user-bg"> <img width="100%" alt="user" src="/resources/plugins/images/large/img1.jpg">
                                <div class="overlay-box">
                                    <div class="user-content">
                                        <a href="javascript:void(0)"><img src="/resources/plugins/images/users/genu.jpg"
                                                class="thumb-lg img-circle" alt="img"></a>
                                        <h4 class="text-white mt-2">${adminLogin.mid}</h4>
                                        <h5 class="text-white mt-2">${adminLogin.memail}</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="user-btm-box mt-5 d-md-flex">
                                <div class="col-md-4 col-sm-4 text-center">
                                    <h1>-</h1>
                                </div>
                                <div class="col-md-4 col-sm-4 text-center">
                                    <h1>-</h1>
                                </div>
                                <div class="col-md-4 col-sm-4 text-center">
                                    <h1>-</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <form class="form-horizontal form-material" id = "mg_mp_update">
                                    <div class="form-group mb-4">
                                        <label class="col-md-12 p-0">Full Name</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="text"  class="form-control p-0 border-0" id="mid" name="mid" value="${adminLogin.mid}" readonly> </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label for="example-email" class="col-md-12 p-0">Email</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="email" 
                                                class="form-control p-0 border-0" id="memail" name="memail" value="${adminLogin.memail}">
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label class="col-md-12 p-0">Password</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="password" value="${adminLogin.mpw}" class="form-control p-0 border-0" id="mpw" name="mpw">
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label class="col-md-12 p-0">Phone No</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="text"  class="form-control p-0 border-0" id="mphone" name="mphone" value="0${adminLogin.mphone}">
                                        </div>
                                    </div>
<!--                                     <div class="form-group mb-4"> -->
<!--                                         <label class="col-md-12 p-0">Message</label> -->
<!--                                         <div class="col-md-12 border-bottom p-0"> -->
<!--                                             <textarea rows="5" class="form-control p-0 border-0"></textarea> -->
<!--                                         </div> -->
<!--                                     </div> -->
                                    <div class="form-group mb-4">
                                        <label class="col-sm-12">Select departmnet</label>

                                        <div class="col-sm-12 border-bottom">
                                            <select class="form-select shadow-none p-0 border-0 form-control-line" id="mdepart" name="mdepart">
                                         		<option value="${adminLogin.mdepart}" selected>${adminLogin.mdepart}</option>
                                            	<option value="CustomerService">CustomerService</option>
                                                <option value="WebContent">WebContent</option>
                                                <option value="ContectCenter">ContectCenter</option>
                                                <option value="ServiceOffice">ServiceOffice</option>
                                                <option value="WebDeveloper">WebDeveloper</option>
                                                <option value="ItTechnician">ItTechnician</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <div class="col-sm-12">
                                            <button type="button" class="btn btn-success" id="updateBtn">Update Profile</button>
                                            <button type="button" class="btn btn-success" id="cancelBtn">cancel </button>
                                            
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- Row -->
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