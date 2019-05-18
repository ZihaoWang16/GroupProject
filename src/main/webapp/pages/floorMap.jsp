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
<title>Floor Map</title>
<script type="text/javascript" src="<%=basePath %>/static/js/jquery-1.8.3.js"></script>
<%--     <script type="text/javascript" src="<%=basePath %>/static/js/jquery-1.4.2.js"></script> --%>
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<!-- <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="http://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

<%-- <link rel="stylesheet" href="<%=basePath %>/static/bootstrap-4.0.0/dist/css/bootstrap.min.css">
<script type="text/javascript" src="<%=basePath %>/static/bootstrap-4.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/static/bootstrap-4.0.0/dist/js/bootstrap.min.js"></script> --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/table.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/dropdown.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/card.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/modal.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/myStyle.css" />
</head>
<body>

<center>
<div class="body" >
	<!-- Search form -->
	<div id="topBar">
		<div class="redirectIcon">
			<div class="shadow-sm p-3 mb-5 bg-light rounded icon backIcon" onclick="javascript:history.back(-1);">
				<img id="backImg" src="<%=basePath %>/static/images/icon/back.png" alt="" border="0" width="50px"/>
			</div>
			<div class="shadow-sm p-3 mb-5 bg-light rounded icon homeIcon">
				<img id="homeImg" src="<%=basePath %>/static/images/icon/home.png" alt="" border="0" width="50px"/>
			</div>
		</div>
		
		<div class="shadow-sm p-3 mb-5 bg-light rounded searchBar animated fadeOutUp faster">
			<div class="icon userIcon">
				<img src="<%=basePath %>/static/images/icon/user.png" alt="" border="0" width="50px" />
			</div>
			
			<nav class="navbar navbar-light bg-light">
			  <form class="form-inline">
			    <input class="form-control mr-sm-2 searchInput" type="search" placeholder="Search" aria-label="Search">
			    <button class="btn btn-outline-success my-2 my-sm-0 searchBtn" type="submit">Search</button>
			  </form>
			</nav>
		</div>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog fitSize" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title" id="modalTitle"></h1>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					  	<!-- <div align="center" style="position:relative;top:10px" onclick="window.open('../pages/description.jsp')">
					     <button>add more descriptions</button>
					    </div>
					<div align="center" style="position:relative;top:10px" onclick="window.open('../pages/viewDescription.jsp')">
					     <button>view more descriptions</button>
					    </div> -->
					<div id="picture">
						<div class="card">
							<div class="card-header">
							    <h1>Picture</h1>
							</div>
							<div class="card-body">
								<img id="image" src="" alt="" style="width:100%"/>
							</div>
						</div>
					</div>
					<div id="description">
						<div class="card">
							<div class="card-header">
							    <h1>Description</h1>
							</div>
							<div class="card-body hasDescription">
								<!-- <h5 class="card-title">Card title</h5>
								<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6> -->
								<p class="card-text"> </p>
								<!-- <a href="#" class="card-link">Card link</a>
								<a href="#" class="card-link">Another link</a> -->
								<div class="d-lg-flex align-items-center justify-content-end userInfo">
									<div class="p-2 userName">hello</div>
									<div class="p-2 userAvatar">
										<img src="<%=basePath %>/static/images/icon/user.png" alt="userAvatar" border="0" width="30px" />
									</div>
								</div>
								<div style="margin-top: 5%;">
									<a href="#" class="card-link">View More Descriptions</a>
								</div>
							</div>
							<div class="card-body hasNoDescription">
								<h4 class="card-title">Oops! No description yet!</h4>
								<div style="margin-top: 5%;">
									<a href="#" class="card-link">Add a Description Now</a>
								</div>
							</div>
						</div>
					</div>
					<div id="timetableDiv">
						<div class="card">
							<div class="card-header">
							    <h1>Timetable</h1>
							</div>
							<div class="card-body">
								<%@include file="../pages/timeTable.html" %>
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="modal-footer">
				  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				  <button type="button" class="btn btn-primary">Save changes</button>
				</div> -->
			</div>
		</div>
	</div>
	
	<!-- map -->
	<div id="content">
		<img id="map" src="<%=basePath %>/${selectedFloor.imgUrl }" alt="" border="0" usemap="#floorMap" />
		<map name="floorMap" id="floorMap">
			<c:forEach var="room" items="${roomList }">
				<area objectId="${room.id }" shape="poly" coords="${room.areaCoords }" alt="" name="${room.name }" href="javascript:void(0);"/>
			</c:forEach>
		</map>
	</div>

	
	<div id="bottomBar">
		<div class="shadow-sm p-3 mb-5 bg-light rounded icon groupIcon">
			<img id="groupIconImg" src="<%=basePath %>/static/images/icon/groupOutlined.png" alt="" border="0" width="50px"/>
		</div>
	
		<!-- Default dropup button -->
		<div class="dropup">
			<button type="button" class="btn btn-secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			  ${selectedFloor.name }
			</button>
			<div class="dropdown-menu">
				<c:forEach var="floor" items="${floorList }">
					<a class="dropdown-item" floorId="${floor.id }" href="<%=basePath %>/floor/selectSelective<%=servletSuffix %>?buildingId=${floor.buildingId }&floorId=${floor.id }">${floor.name }</a>
				</c:forEach>
				<!-- <div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#">Separated link</a> -->
			</div>
		</div>
		
		<div class="zoomIcon">
			<div class="shadow-sm p-3 mb-5 bg-light rounded icon">
				<img id="zoomInImg" src="<%=basePath %>/static/images/icon/zoomIn.png" alt="" border="0" width="50px"/>
			</div>
			<div class="shadow-sm p-3 mb-5 bg-light rounded icon">
				<img id="zoomOutImg" src="<%=basePath %>/static/images/icon/zoomOut.png" alt="" border="0" width="50px"/>
			</div>
		</div>
		<!-- <div class="shadow-sm p-3 mb-5 bg-light rounded icon zoomOutIcon">
		</div> -->
	</div>
	
</div>
</center>
<!-- jQuery CDN - Slim version (=without AJAX) -->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<!-- Popper.JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
<script type="text/javascript"> 
	var basePath = '<%=basePath %>';
	var servletSuffix = '<%=servletSuffix %>';
	var zoomIndex = 5;
	var floorImgUrl = '${selectedFloor.imgUrl }';
	var floorId = '${selectedFloor.id }';
	var buildingId = '${selectedFloor.buildingId }'
	
	window.onload = function(){
		$.ajax({
			url:basePath+"/facility/selectSelective.do",
	           type:"post",
	           data:JSON.stringify({'buildingId':buildingId,'floorId':floorId}),
	           contentType: "application/json",
	           dataType:"json",
	           success:function(data){
	        	   data.forEach(function(facility, index){
	        		   var coords = facility.mapPosition.split(",");
	        		   var height = 20;
	        		   var x = parseInt(coords[0])-height/2;
	        		   var y = parseInt(coords[1])-height/2;
	        		   $("#content").append('<img class="facility" style="position: absolute;left:'+x+'px;top:'+y+'px;height:'+height+'px" src="'+basePath+facility.imgUrl+'" alt="" border="0" />');
	        	   });
	           }
			
		});
	}
	
</script>      
<script type="text/javascript" src="<%=basePath %>/static/js/component.js"></script>
<script type="text/javascript" src="<%=basePath %>/static/js/imageResize.js"></script>
<script type="text/javascript" src="<%=basePath %>/static/js/showRoomInfo.js"></script>
<script type="text/javascript" src="<%=basePath %>/static/js/showOccupiedRoom.js"></script>
<%-- <script type="text/javascript" src="<%=basePath %>/static/js/getPosition.js"></script> --%>

</body>

</html>
