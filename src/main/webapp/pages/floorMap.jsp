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
    <title>BS Ground Floor</title>
    <script type="text/javascript" src="<%=basePath %>/static/js/jquery-1.4.2.js"></script>
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="http://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/static/css/table.css" />
	<style type="text/css">
		.modal-dialog{
			width: 1100px;
		}
	</style>
</head>
<body>
<center>
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
	      	<div>
	      		<img id="image" src="" alt="" style="width:600px"/>
	      	</div>
	      	<div id="timetableDiv">
	      		<table id="timetable" width="300px" border="1" cellpadding="0" cellspacing="0">
					<thead>
						<tr>
							<th></th>
							<th>Monday</th>
							<th>Tuesday</th>
							<th>Wednesday</th>
							<th>Thursday</th>
							<th>Friday</th>
							<th>Saturday</th>
							<th>Sunday</th>
						</tr>
					</thead>
					<tbody id="tableBody">
						<tr>
							<td rowspan="2">9AM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">10AM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">11AM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">12PM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">1PM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">2PM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">3PM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">4PM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">5PM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">6PM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">7PM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">8PM</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="display:none"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
	      	</div>
	      </div>
	      <!-- <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div> -->
	    </div>
	  </div>
	</div>
	
	<img src="<%=basePath %>${floor.imgUrl }" alt="" border="0" usemap="#BS-G"></img>
	<map name="BS-G" id="BS-G">
		<c:forEach var="room" items="${roomList }">
			<area id="ihaveid" shape="poly" coords="${room.areaCoords }" alt="" name="${room.name }" href="javascript:void(0);"/>
		</c:forEach>
	</map>
</center>
	<script type="text/javascript"> 
		var lessonList = null;
		
		$("area").on('click', function () {
		    /* alert($(this).attr('name')); */ 
		    $.ajax({
	            url:"<%=basePath %>/room/selectSelective.do",
	            type:"post",
	            data:JSON.stringify({'name':$(this).attr('name')}),
	            contentType: "application/json",
	            dataType:"json",
	            success:function(data){
	            	$('#modalTitle').html(data.room.name);
	                $('#description').html('<p>'+data.room.description+'</p>');
	                $('#image').attr('src','<%=basePath %>'+data.room.imgUrl);
	                lessonList = data.timetable;
	                buildTimetable(lessonList);
	            }
	        });
		    $('#modal').modal('show');
		});
		
		function buildTimetable(data){
			var tb = document.getElementById('tableBody');    // table 的 id
			var rows = tb.rows;                           // 获取表格所有行
			
			data.forEach(function(e){  
				var day = e.day;
				var startTime = e.startTime;
				var endTime = e.endTime;
				var duration = (endTime-startTime)*2;
				var startRow = (startTime-9)*2;
				console.log(startRow);

				rows[startRow].cells[day].setAttribute("class", "lesson");
				rows[startRow].cells[day].setAttribute("rowspan", duration+"");
				rows[startRow].cells[day].innerHTML=e.moduleCode+"<br/>"+e.name;
				for (var i = 1; i<duration; i++){
					rows[startRow+i].cells[day].setAttribute("style", "display:none");
				}
			});
		}
		
		$("#modal").on("hidden.bs.modal", function() {
			var tb = document.getElementById('tableBody');    // table 的 id
			var rows = tb.rows;                           // 获取表格所有行
			
			lessonList.forEach(function(e){  
				var day = e.day;
				var startTime = e.startTime;
				var endTime = e.endTime;
				var duration = (endTime-startTime)*2;
				var startRow = (startTime-9)*2;
				console.log(startRow);

				rows[startRow].cells[day].removeAttribute("class");
				rows[startRow].cells[day].removeAttribute("rowspan");
				rows[startRow].cells[day].innerHTML="";
				for (var i = 1; i<duration; i++){
					rows[startRow+i].cells[day].removeAttribute("style");
				}
			});
		});
	
		function getMousePos(event) {
		    var e = event || window.event;
		    var scrollX = document.documentElement.scrollLeft || document.body.scrollLeft;
		    var scrollY = document.documentElement.scrollTop || document.body.scrollTop;
		    var x = e.pageX || e.clientX + scrollX;
		    var y = e.pageY || e.clientY + scrollY;
		    //alert('x: ' + x + '\ny: ' + y);
	        return { 'x': x, 'y': y };
	    }

        document.onmousedown = mouseMove;
		function mouseMove(ev){
			ev = ev || window.event;
			var mousePos = getMousePos(ev);
			console.log('x: ' + mousePos.x + '\ny: ' + mousePos.y);

		    // document.getElementByIdx('mouseXPosition').value = mousePos.x;
		    // document.getElementByIdx('mouseYPosition').value = mousePos.y;
		}
	</script>      
</body>
</html>
