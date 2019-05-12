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
<body>
	<div align = center>
		<h1>Welcome to XMAP</h1>
		<c:choose>
			<c:when test="${user != null }"><h2>Welcome, ${user.username}</h2></c:when>
			<c:otherwise><h2>Welcome, guest</h2></c:otherwise>
		</c:choose>
		<a href = /pages/login.jsp>Login</a>
		<a href = /pages/register.jsp>Register</a>
		<a href = /pages/BS-G.jsp> BS-G</a>
		<a href = /pages/campusMap.jsp> campus map</a>
		<a href = /pages/floorMap.jsp> floor map</a>
	</div>
</body>
</html>
