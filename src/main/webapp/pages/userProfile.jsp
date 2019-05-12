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
	<meta charset="ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/userProfile.css" />
	<title>${user.username}'s profile</title>
</head>
<body>
	<h1 align="center">Profile</h1>
	<div class="container">
		<div class="picture">
			<img src="${user.photoSrc}"/>
		</div>
		<br>
		<div class="name">Name : ${user.firstName} ${user.lastName }</div>
		<br>
		<div class="city">City : ${user.city }</div>
		<br>
		<div class="country">Country : ${user.country }</div>
		<br>
		<div class="address">Address : ${user.address }</div>
		<br>
		<div class="phone_number">Phone Number : ${user.phoneNum }</div>
	</div>
</body>
</html>