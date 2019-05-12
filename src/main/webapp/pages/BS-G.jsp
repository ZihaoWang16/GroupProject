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
		#printer1{
            position: absolute;
            left: 688px;
            top: 916px;
            height:50px;
            width:50px;
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
	
<div>
	<img src="<%=basePath %>/static/images/floor/BSGF.png" alt="" border="0" usemap="#BS-G"></img>
	<map name="BS-G" id="BS-G">
		<area class="room" id="ihaveid" shape="poly" coords="207,725,106,899,277,1040,407,871" alt="" name="BSG56" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="416,878,282,1048,403,1148,507,1023,508,952" alt="" name="BSG54" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="610,948,610,985,742,987,742,948" alt="" name="BSG41" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="548,947,548,1000,600,1000,600,947" alt="" name="BSG43" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="548,1067,548,1120,600,1120,600,1054" alt="" name="BSG48" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="750,946,750,993,612,999,612,1169,772,1169,772,946" alt="" name="BSG40" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="780,946,780,1168,942,1168,951,1001,807,997,807,950" alt="" name="BSG38" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="1045,988,1045,1168,1209,1168,1208,1048,1160,988" alt="" name="BSG33" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="1440,688,1525,788,1611,715,1528,616" alt="" name="BSG21" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="1568,653,1620,708,1724,623,1731,585,1633,571" alt="" name="BSG19" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="1682,220,1655,362,1852,397,1875,253,1825,217,1743,200" alt="" name="BSG02" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="1664,446,1664,464,1692,472,1692,496,1743,505,1743,470" alt="" name="BSG07" href="javascript:void(0);"/>
		<area class="room" shape="poly" coords="1639,483,1634,518,1737,538,1743,514" alt="" name="BSG11" href="javascript:void(0);"/>
	</map>
	<div>
	    <img id="printer1" src="<%=basePath %>/static/images/icon/printer.png" alt=""></img>
	    <!-- Modify the URL to make them visible -->
	    <img id="printer2" src="" alt=""></img>
	    <img id="printer3" src="" alt=""></img>
	    <img id="waterDispenser1" src="" alt=""></img>
	    <img id="waterDispenser2" src="" alt=""></img>
	    <img id="waterDispenser3" src="" alt=""></img>
	    <img id="locker1" src="" alt=""></img>
	    <img id="locker2" src="" alt=""></img>
	    <img id="locker3" src="" alt=""></img>
	    <img id="coffeeMachine1" src="" alt=""></img>
	    <img id="coffeeMachine2" src="" alt=""></img>
	    <img id="drinkMachine1" src="" alt=""></img>
	    <img id="drinkMachine2" src="" alt=""></img>
	</div>
</div>
	
</center>
	<script type="text/javascript"> 
		var lessonList = null;
		
		$("area.room").on('click', function () {
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
			$("table#timetable").show();
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

	</script>      
</body>
</html>