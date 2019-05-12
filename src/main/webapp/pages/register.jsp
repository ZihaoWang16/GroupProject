<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
	String servletSuffix = ".do";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=basePath %>/resources/js/jquery-1.4.2.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/registration.css" />
	<title>Register</title>
</head>
<body>
	<a href="javascript:history.back(-1)">Back</a>
	<div align="center">
		<div class="box" align="left">
			<form id = "Register" action ="<%=basePath %>/user/register<%=servletSuffix %>" method = "POST">
				Username :
		         <input id="username" type="text" value="${errorMap.username==null?user.username:'' }" name="username" />
		         <div style = "color:red">${requestScope.errorMap.username}</div>
		        <br>
		        Password :
		        <input id="password" type="password" value="${errorMap.password==null?user.password:'' }" name="password" />
		        <div style = "color:red">${requestScope.errorMap.password}</div>
		        <br>
		        First name :
		        <input type="text" value="${errorMap.firstName==null?user.firstName:'' }" name="firstName" />
		        <div style = "color:red">${requestScope.errorMap.firstName}</div>
		        <br>
		        Last name : 
		        <input type="text" value="${errorMap.lastName==null?user.lastName:'' }" name="lastName" />
		        <div style = "color:red">${requestScope.errorMap.lastName}</div>
		          <br>
		          City (optional): 
		          <input type="text" value="" name="city" />
		          <br>
		          <br>
		          Country (optional): 
		          <input type="text" value="" name="country" />
		          <br>
		          <br>
		          Address (optional):
		          <input type="text" value="" name="address" />
		          <br>
		          <br>
		          Phone number (optional):
		          <input type="text" value="" name="phoneNum" />
		          <br>
		          <br>
		          Image url (optional) : 
		          <input type="text" value="" name="photoSrc" />
		          <br>
		          <br>
			<input type="submit" value="Register"/>
		</form>
	</div>
</div>
       <p id = "test"></p>
<script type="text/javascript">
    <%-- $("#Register").submit(function(){
        event.preventDefault();
        var form = $(this),
        	url = $form.attr( 'action' )
        	
        var user = {
        	username: $("input[name=username]").val(),
        	password: $("input[name=password]").val(),
        	firstName: $("input[name=firstName]").val(),
        	lastName: $("input[name=lastName]").val(),
        	city: $("input[name=city]").val(),
        	country: $("input[name=country]").val(),
        	address: $("input[name=address]").val(),
        	phoneNum: $("input[name=phoneNum]").val(),
        	photoSrc: $("input[name=photoSrc]").val()
        }
     	
        var posting = $.post( url, {User : JSON.stringify(user)} );

        posting.done(function( data ) {
        	window.location = <%=basePath%> + "/pages/loginSuccessful.jsp";
        });
	});  --%>
</script>
</body>
</html>