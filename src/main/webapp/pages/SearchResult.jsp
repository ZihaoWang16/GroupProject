<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
	String servletSuffix = ".do";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search Results</title>
    <script type="text/javascript" src="<%=basePath %>/resources/js/jquery-1.4.2.js"></script>
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="http://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/searchResult.css" /> 
	
</head>
<body>
		
		<div class="wrap" id="wrap">
		<header class="bar">
		  <form name="search" class="search" id="search" action="">
		    <p class="search-row">
		      <input type="search" name="word" id="word">
		      <span class="placeholder "><span class="iconfont icon-search"></span><span class="text">Search</span></span>
		    </p>
		  </form>
		</header>

		  <div class="container">
		    <!-- <div id="searchLI"><li><a href="#">BSG02
        		<h6>ibss ground floor</h6></a></li></div> -->
        	<div id="aspect1">
        		<div>the building position</div>
		        <div class="searchLI"><li><a href="<% %>"><% %><!-- building  -->
		        	<h6><% %><!-- the building full name --></h6></a></li></div>
	        </div>
	        
	        <div id="aspect2">
	        	<div>the </div>
	        </div>
		  
		 </div>
		  
	<script type="text/javascript">
	/* 输入框获取到焦点 表示用户正在输入 */
	$("#word").focusin(function() {
	  $(".search-row").addClass("active iconfont icon-search");
	});
	/* 输入框失去焦点 表示用户输入完毕 */
	$("#word").focusout(function() {
	  /* 判断用户是否有内容输入 */
	  if ($(this).val()=="") {
	    /* 没有内容输入 改变样式 */
	    $(".search-row").removeClass("active iconfont icon-search");
	  } else {
	    /* 有内容输入 保持样式 并提交表单 */
	    $("#search").submit();
	  }
	});
	
	</script>
      
</body>
</html>