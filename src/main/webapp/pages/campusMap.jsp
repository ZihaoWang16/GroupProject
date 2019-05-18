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
    <title>CampusMap</title>
    <script type="text/javascript" src="<%=basePath %>/static/js/jquery-1.8.3.js"></script>
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/card.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/modal.css" />	
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/myStyle.css" />
	<style type="text/css">
		.fitSize
		{
			max-width: 100% !important;
		}
		.modal-dialog
		{
			width: 1100px;
		}
		.inside
		{
			font-size: 1.5rem;
		}
	</style>
</head>
<body>
<center>
	<!-- Search form -->
	<div id="topBar">
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

	<!-- the place to put on the specific data -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	  <div class="modal-dialog fitSize" role="document">	  
	    <div class="modal-content">	    
	      <div class="modal-header">
	      
	      <!-- modalTitle -->
	        <h1 class="modal-title" id="modalTitle"></h1>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
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
	      	
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary inside">View This Building</button>
	      </div>
	    </div>
	  </div>
	</div>

	<img src="<%=basePath %>/static/images/CampusMap.png" alt="" border="0" usemap="#campusMap"></img>
	<map name="campusMap" id="campusMap">
	</map>
	
	<div id="bottomBar">
		<div class="zoomIcon">
			<div class="shadow-sm p-3 mb-5 bg-light rounded icon">
				<img id="zoomInImg" src="<%=basePath %>/static/images/icon/zoomIn.png" alt="" border="0" width="50px"/>
			</div>
			<div class="shadow-sm p-3 mb-5 bg-light rounded icon">
				<img id="zoomOutImg" src="<%=basePath %>/static/images/icon/zoomOut.png" alt="" border="0" width="50px"/>
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
	var servletSuffix = '<%=servletSuffix %>';
	window.onload = function(){
		$.ajax({
	        url:"<%=basePath %>/building/selectSelective.do",
	        type:"post",
	        data:JSON.stringify({'id':0}),
	        contentType: "application/json",
	        dataType:"json",
	        success:function(data){
	        	data.forEach(function(building, index){
	        		$("#campusMap").append('<area objectId="'+building.id+'" shape="poly" coords="'+building.areaCoords+'" alt="'+building.code+'" href="javascript:void(0);"/>');
	        	});
	        }
	    });
	}
	
	$("#campusMap").on('click','area',function () {
	    $.ajax({
            url:"<%=basePath %>/building/getBuildingInfo.do",
            type:"post",
            data:JSON.stringify({'id':$(this).attr('objectId')}),
            contentType: "application/json",
            dataType:"json",
            success:function(data){
            	$('#modalTitle').html(data.building.name);
            	$('#modalTitle').attr("objectId",data.building.id);
                /* $('#description').html('<p>'+building.description+'</p>');
                $('#image').attr('src',basePath+building.imgUrl);
                $('#modalTitle').html(data.room.name); */
                
            	if (data.description) {
            		$(".hasDescription").show();
            		$(".hasNoDescription").hide();
            		$('.hasDescription p').html(data.description.content);
            		$('.userName').html(data.user.username);
            		$('.hasDescription a').attr("href",basePath+"/description/selectSelective"+servletSuffix+"?buildingId="+data.building.id);
    			} else {
    				$(".hasDescription").hide();
            		$(".hasNoDescription").show();
    				$('.hasNoDescription a').attr("href",basePath+"/pages/user/addDescription.jsp");
    			}
                $('#image').attr('src',basePath+data.building.imgUrl);
            }
        });
	    $('#modal').modal('show');
	});
	
	$(".inside").on('click', function(){
		window.location.href = basePath + "/floor/selectSelective"+servletSuffix+"?buildingId="+$('#modalTitle').attr("objectId");
	})
</script>
<script type="text/javascript" src="<%=basePath %>/static/js/component.js"></script>
<%-- <script type="text/javascript" src="<%=basePath %>/static/js/imageResize.js"></script> --%>
<%-- <script type="text/javascript" src="<%=basePath %>/static/js/getPosition.js"></script> --%>
</body>
</html>