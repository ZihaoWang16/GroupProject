
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
	String servletSuffix = ".do";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=basePath %>/resources/js/jquery-1.4.2.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/login.css" />
    <!--<script type="text/javascript" src="<%--<%=basePath %>--%>/resources/js/jquery-1.8.2.min.js"></script>-->
    <title>Add Description</title>
</head>
<body>
    <a href="javascript:history.back(-1)">Back</a>
<div align="center">
	
	
	<div class="box">
		<div style = "color:red">
			${error }
		</div>
	    <form action="<%=basePath %>/user/login<%=servletSuffix %>" method="post">
	        <td><textarea name="reworkmes"   cols="40"   rows="10"   style="OVERFLOW:   hidden">Please add your descriptions here:</textarea></td>
	        
	        <p><input type="submit" value="Subbmit"></p>    
	    </form>
	</div>
</div>
    
</body>