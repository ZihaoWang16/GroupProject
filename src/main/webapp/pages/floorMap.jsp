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
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="http://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/table.css" />
	<style type="text/css">
		/* .body {
		  max-width: 100%;
		  margin: 0 auto;
		  align: center;
		}  */
		.modal-dialog{
			width: 1100px;
		}
		/* #map {
			max-width: 100%;
		    max-height: 100vh;
		    height: auto;
		} */
		/* img {
			display: block;
		  margin-left: auto;
		  margin-right: auto;
		} */
		button.dropbtn{
			text-align:center;
			border:solid 1px #000;
			position:absolute; 
			bottom:0px;
			left:0;
			right:0;
			background-color: #fff;
			color: balck;
			padding: 16px;
			font-size: 16px;
		}
		div.dropup{
			margin:0 auto;
			padding:16px;
			text-align:center;
			height:300px;
			width:124px;
			display:none;
			position:absolute; 
			bottom:40px;
			border:solid 1px #c3c3c3;
			background-color: #ddd;
		}
		.content p:hover{background-color: #c3c3c3}
		.icon {
		  position: absolute;
		  left:0px;
		  top:0px;
          height:32px;
          width:32px;
		}
	</style>
</head>
<body>
<center>
<div class="body">
	<!-- Modal -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	  <div class="modal-dialog" role="document">
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
	      	<div align="center" style="position:relative;top:10px" onclick="window.open('../pages/description.jsp')">
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
	<img id="map" src="<%=basePath %>${selectedFloor.imgUrl }" alt="" border="0" usemap="#BS-G" ></img>
		<c:forEach var="room" items="${roomList }">
			<area id="ihaveid" shape="poly" coords="${room.areaCoords }" alt="" name="${room.name }" href="javascript:void(0);"/>
		</c:forEach>
	</map>
	
	<div class="dropup">
		<div class="content">
			<c:forEach var="floor" items="${floorList }">
				<p name="${floor.id }">${floor.name }</p>
			</c:forEach>
		</div>
	</div>
	 
	<button class="dropbtn">Choose the Floor</button>
		<c:forEach var="facility" items="${facilityList }">
		<img class="icon" id="${facility.id }" src="" alt="" >
		<script>
		    var floorId = '${room.floorId }';
		    var floorIdFac = '${facility.floorId }';
		    if(floorId == floorIdFac){
			var facilityId = '${facility.id}';
		    $("#${facility.id}").attr('src','<%=basePath %>'+'${facility.imgUrl }');
		    var facilityPos = '${facility.map_position}';
		    var facilityPosSplit = facilityPos.split(",");
		    var arrFacilityPosSplit = facilityPosSplit.length;
		    var numLeft = Number(facilityPosSplit[0]) + 140;
		    var numTop = Number(facilityPosSplit[1]) - 20;
			$("#${facility.id}").css("left",numLeft);
			$("#${facility.id}").css("top",numTop);
		    }
		</script>
		</c:forEach>
</div>
</center>
<script type="text/javascript"> 
	var basePath = '<%=basePath %>';
	var floorImgUrl = '${selectedFloor.imgUrl }';
</script>      
<%-- <script type="text/javascript" src="<%=basePath %>/static/js/imageResize.js"></script> --%>
<script type="text/javascript" src="<%=basePath %>/static/js/timetable.js"></script>
<script type="text/javascript" src="<%=basePath %>/static/js/getPosition.js"></script>
<script type="text/javascript"> 
$(".dropbtn").click(function(){
    $(".dropup").slideToggle("slow");
  });
$(".content p").click(function(){
	alert($(this).attr("name"))
	var buildingId = "${floor.buildingId }";
	window.location.href = "<%=basePath%>/floor/selectSelective.do?floorId="+$(this).attr("name")+"&buildingId="+buildingId;
});
</script>

</body>
</html>
