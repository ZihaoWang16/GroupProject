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
	<br>
	    <div id="warning"></div>
	<br>
	<div class="box">
	<form id = "Register" action ="<%=basePath %>/user/register<%=servletSuffix %>" method = "POST">
	Username : <br>
	         <input id="username" type="text" value="" name="username" />
	         <div style = "color:red">${error}</div>
	        <br>
	        Password : <br>
	        <input id="password" type="password" value="" name="password" />
	        <div style = "color:red">${error1}</div>
	        <br>
	        First name : <br>
	        <input type="text" value="" name="firstName" />
	        <div style = "color:red">${error2}</div>
	        <br>
	        Last name : <br>
	        <input type="text" value="" name="lastName" />
	        <div style = "color:red">${error3}</div>
	          <br>
	          City (optional): <br>
	          <input type="text" value="" name="city" />
	          <br>
	          Country (optional): <br>
	          <input type="text" value="" name="country" />
	          <br>
	          Address (optional): <br>
	          <input type="text" value="" name="address" />
	          <br>
	          Phone number (optional): <br>
	          <input type="text" value="" name="phoneNum" />
	          <br>
	          Image url (optional) : <br>
	          <input type="text" value="" name="photoSrc" />
	          <br>
		<input type="submit" value="Register"/>
	</form>
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