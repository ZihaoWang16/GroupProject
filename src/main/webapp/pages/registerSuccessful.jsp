<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register Successful</title>
    <script type="text/javascript">
		var num=5;
		var redirectURL = '<%=session.getAttribute("redirectURL")%>';
		function redirect(){
			num--;
			document.getElementById("num").innerHTML=num;
			if(num<0){
				document.getElementById("num").innerHTML=0;
				if(redirectURL=='null'){
					window.location.href= '<%=basePath %>/';
				}else{
					window.location.href= "${sessionScope.redirectURL }";
				}
			}
		}
		setInterval("redirect()", 1000);
	</script>
</head>
<body>
<div align="center">
    Register Successful!
    The page will jump back to previous page in <span id="num">5</span> seconds
    <br/>
    <a href="${sessionScope.redirectURL}">Return Now</a> 
</div>
</body>
</html>