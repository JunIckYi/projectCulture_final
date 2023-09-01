<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
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
    
   	<script type="text/javascript" src="/resources/dist/js/jquery-3.7.0.min.js"></script>
	<script type="text/javascript" src="/resources/dist/js/common.js"></script>

    <title><tiles:getAsString name = "title" /></title>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/dist/css/sticky-footer-navbar.css" rel="stylesheet">
<!--     <script src="/resources/assets/js/ie-emulation-modes-warning.js"></script> -->
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="/resources/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
		<tiles:insertAttribute name="header"/>
    </nav>

    <!-- Begin page content -->
    <div class="container">
      <div class="page-header">
        <h1><tiles:getAsString name="title" /></h1>
      </div>
      <tiles:insertAttribute name="body" />
    </div>

    <footer class="footer">
     	<tiles:insertAttribute name="footer" />
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
<!--     <script src="/resources/dist/js/bootstrap.min.js"></script> -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<!--     <script src="/resources/assets/js/ie10-viewport-bug-workaround.js"></script> -->
  </body>
</html>
