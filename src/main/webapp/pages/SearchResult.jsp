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
		  <header class="top-header">
		   <span class="search">
		    <input type="search" placeholder="water dispenser" /></span>
		    <span class="submit"></span>
		  </header>
		  
		  <!-- <div class="top">
		    <div class="hero"></div>
		  </div> -->
		  <div id="container">
		    <div id="searchLI"><li><a href="#">BSG02
        		<h6>ibss ground floor</h6></a></li></div>
	        <div id="searchLI"><li><a href="#">BSG04
	        	<h6>ibss ground floor</h6></a></li></div>
	        <div id="searchLI"><li><a href="#">BS3F Water Dispenser
	        	<h6>ibss 3rd floor</h6></a></li></div>	 <!-- Water Dispenser -->
			<div id="searchLI"><li><a href="#">BS2F Printer
				<h6>ibss 2nd floor</h6></a></li></div>	<!-- Printer -->
		  
		 </div> 
		
		 <!-- <div id="searchFrame" ><input type="text" id="searchInput" onkeyup="searchFunction()" placeholder="Water Dispenser"></div>
        
        <div id="searchLI"><li><a href="#">BSG02
        	<h6>ibss ground floor</h6></a></li></div>
        <div id="searchLI"><li><a href="#">BSG04
        	<h6>ibss ground floor</h6></a></li></div>
        <div id="searchLI"><li><a href="#">BS3F Water Dispenser
        	<h6>ibss 3rd floor</h6></a></li></div>	 Water Dispenser
		<div id="searchLI"><li><a href="#">BS2F Printer
			<h6>ibss 2nd floor</h6></a></li></div>	Printer -->
			
        <!-- <script type="text/javascript">
	        var wrap = $("#wrap");
	
	        wrap.on("scroll", function(e) {
	            
	          if (this.scrollTop > 147) {
	            wrap.addClass("fix-search");
	          } else {
	            wrap.removeClass("fix-search");
	          }
	          
	        });
	        
        </script> -->
      
</body>
</html>