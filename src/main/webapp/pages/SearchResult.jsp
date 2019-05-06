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
        <input type="text" id="searchInput" onkeyup="searchFunction()" placeholder="Water Dispenser">
        
        <div id="searchLI"><li><a href="#">BSG02
        	<h6>ibss ground floor</h6></a></li></div>
        <div id="searchLI"><li><a href="#">BSG04
        	<h6>ibss ground floor</h6></a></li></div>
        <div id="searchLI"><li><a href="#">BS3F Water Dispenser
        	<h6>ibss 3rd floor</h6></a></li></div>	 <!-- Water Dispenser -->
		<div id="searchLI"><li><a href="#">BS2F Printer
			<h6>ibss 2nd floor</h6></a></li></div>	<!-- Printer -->
        
        <!-- <script type="text/javascript">
	        function searchFunction() {
	            var input, filter, ul, li, a, i;
	            input = document.getElementById('searchInput');
	            filter = input.value.toUpperCase();
	            ul = document.getElementById("searchLI");
	            li = ul.getElementsByTagName('li');
	
	            for (i = 0; i < li.length; i++) {
	                a = li[i].getElementsByTagName("a")[0];
	                if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
	                    li[i].style.display = "";
	                } else {
	                    li[i].style.display = "none";
	                }
	            }
	        }
        </script> -->
</body>
</html>