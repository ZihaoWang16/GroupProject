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
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/table.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/dropdown.css" />
	<style type="text/css">
		html,body
		{
			font-size: 14px;
		}
		#bottomBar
		{
			position:fixed;
			margin:auto;
			bottom:0;
			height:15%;
			width:100%;
		}
		.modal-dialog
		{
			width: 1100px;
		}
		.groupIcon
		{
			position: fixed;
			margin: auto;
			bottom: 5%;
			left: 5%;
			width: 50px;
			height: auto;
			cursor: pointer;
			z-index: 1;
			opacity: 0.5;
		}
		.groupIcon:hover
		{
			opacity: 1.0;
		}
		.body
		{
			margin-top: 10%;
			margin-bottom: 10%;
		}
		#map {
			/* max-width: 100%;
		    max-height: 100vh;
		    height: auto; */
		}
		/* img {
			display: block;
		  margin-left: auto;
		  margin-right: auto;
		} */
		/*
		.icon {
		  position: absolute;
		  left:0px;
		  top:0px;
          height:32px;
          width:32px;
		}
		*/
		#topBar
		{
			position: fixed;
			margin: auto;
			top: 0;
			width: 100%;
			height: 20%;
		}
		.searchBar
		{
			position: absolute;
			width: 100%;
			height: auto;
			bottom: 0;
			left: 50%;
			margin-left: -25rem;
			display:none;
		}
		#topBar:hover .searchBar
		{
			display:block;
		}
		.userIcon
		{
			margin: 0.5rem 0.5rem;
			float: left;
			cursor: pointer;
			z-index: 1;
			opacity: 0.5;
		}
		.userIcon:hover
		{
			opacity: 1.0;
		}
		.navbar
		{
			width: 45rem;
			background-color: transparent !important;
			float: left;
		}
		form
		{
			margin:0px auto;
		}
		.searchInput
		{
			font-size: 1.5rem;
			width: 35rem !important;
			height: 4rem;
		}
		.searchBtn
		{
			width: 7rem;
			height: 4rem;
		}
	</style>
</head>
<body>

<center>
<div class="body" >
	<!-- Search form -->
	<div id="topBar">
		<div class="searchBar">
			<img class="userIcon" src="<%=basePath %>/static/images/icon/user.png" alt="" border="0" width="50px" />
			
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
	  <div class="modal-dialog test" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title" id="modalTitle"></h1>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	<div id="description">
	      </div>
	      	<div align="center" style="position:relative;top:10px" onclick="window.open('../pages/description.jsp')">
             <button>add more descriptions</button>
            </div>
	      	<div align="center" style="position:relative;top:10px" onclick="window.open('../pages/viewDescription.jsp')">
             <button>view more descriptions</button>
            </div>
	      	<div>
	      		<img id="image" src="" alt="" style="width:600px"/>
	      	</div>
	      	<div id="timetableDiv">
	      		<%@include file="../pages/timeTable.html" %>
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
				<area shape="poly" coords="${room.areaCoords }" alt="" name="${room.name }" href="javascript:void(0);"/>
			</c:forEach>
		</map>
	</div>

	
	<div id="bottomBar">
		<div class="groupIcon">
			<img src="<%=basePath %>/static/images/icon/groupOutlined.png" alt="" border="0" width="50px"/>
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
	var zoomIndex = 5;
	var floorImgUrl = '${selectedFloor.imgUrl }';
	var floorId = '${selectedFloor.id }';
	var buildingId = '${selectedFloor.buildingId }'
	
	/* $.ajax({
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
        		   $(".body").append('<img class="facility" style="position: absolute;left:'+x+'px;top:'+y+'px;height:'+height+'px" src="'+basePath+facility.imgUrl+'" alt="" border="0" />');
        	   });
           }
		
	}); */
	
</script>      
<script type="text/javascript" src="<%=basePath %>/static/js/imageResize.js"></script>
<script type="text/javascript" src="<%=basePath %>/static/js/timetable.js"></script>
<script type="text/javascript" src="<%=basePath %>/static/js/showOccupiedRoom.js"></script>
<%-- <script type="text/javascript" src="<%=basePath %>/static/js/getPosition.js"></script> --%>

</body>

</html>
