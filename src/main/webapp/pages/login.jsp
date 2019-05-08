<%-- 
    Document   : login
    Created on : 2018-11-29, 21:21:43
    Author     : asus
--%>
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
    <title>Login</title>
</head>
<body>
    <a href="javascript:history.back(-1)">Back</a>
<div align="center">
	<div id="warning" style="color:red">
		<c:if test="${requestScope.interception!=null }">You have not logged in. Please sign in first.</c:if>
	</div>
	
	<div class="box">
		<div style = "color:red">
			${error }
		</div>
	    <form action="<%=basePath %>/user/login<%=servletSuffix %>" method="post">
	        <p>Username:<input type="text" name="username"></p>
	        <p>Password:<input type="password" name="password"></p>
	        <p><input type="submit" value="Sign In"></p>     <a href="./register.jsp">Register Now</a>
	    </form>
	</div>
</div>
    <script type="text/javascript">

        var flag = ${requestScope.isRegistered==null?"null":requestScope.isRegistered};
        
        if(flag===false){
        	$("#warning").html("Invalid input. Please try again.");
        }else if (flag===true){
        	window.self.location = "<%=basePath%>/pages/loginSuccessful.jsp";
        }
    </script>
</body>