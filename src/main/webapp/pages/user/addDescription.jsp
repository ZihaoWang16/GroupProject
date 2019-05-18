
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
    <script type="text/javascript" src="<%=basePath %>/static/js/jquery-1.4.2.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/login.css" />
    <!--<script type="text/javascript" src="<%--<%=basePath %>--%>/resources/js/jquery-1.8.2.min.js"></script>-->
    <title>Add Description</title>
</head>
<body>
    <a href="javascript:history.back(-1)">Back</a>
<div align="center">
	<div class="box">
		<form action="<%=basePath %>/description/submit.do" method="post">
			<textarea name="content"   cols="40"   rows="10"  placeholder="Please add your descriptions here:"></textarea>
			<!-- <div align="center" style="position:relative;top:-80px";value="弹出对话框" onclick="MsgBox()" > -->
			<input type="submit" onclick="MsgBox()" value="submit your descriptions" />
			<!-- </div> -->
		</form>
    </div>
	    
</div>
   

<script language="javascript">
function MsgBox() 
{
  alert("Submit Successfully!"); 
}
</script>
</body>