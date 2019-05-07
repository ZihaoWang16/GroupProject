<html>
<body>
	<div align = center>
		<h1>Welcome to XMAP</h1>
		<%
			boolean username = (session.getAttribute("userMap") != null);
			if (username){%>
				   <h2>Welcome, ${userMap.username}</h2>
			<%} else {%>
			    <h2>Welcome, guest</h2>
			<%}
		%>
		<a href = /pages/login.jsp>Login</a>
		<a href = /pages/register.jsp>Register</a>
		<a href = /pages/BS-G.jsp> BS-G</a>
		<a href = /pages/campusMap.jsp> campus map</a>
		<a href = /pages/floorMap.jsp> floor map</a>
		<a href = /pages/timetable.jsp> time table</a>
		<a href = /pages/timeTable.html> time table 2</a>
	</div>
</body>
</html>
