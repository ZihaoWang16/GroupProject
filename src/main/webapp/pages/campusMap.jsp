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
	<!-- the place to put on the specific data -->
	
	
	
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	  <div class="modal-dialog" role="document">	  
	    <div class="modal-content">	    
	      <div class="modal-header">
	      
	      <!-- modalTitle -->
	        <h1 class="modal-title" id="modalTitle">
	        CampusMap 
	        </h1>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      
	      <!-- description -->
	      	<div id="description">
	      	
	      	</div>
	      	<div>
	      		<img id="image" src="" alt="" style="width:300px"/>
	      	</div>
	      	<div id="timetableDiv">
	      			
	      	</div>
	      </div>
	      <!-- <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div> -->
	    </div>
	  </div>
	</div>

	<img src="<%=basePath %>/static/images/CampusMap.png" alt="" border="0" usemap="#campusMap"></img>
	<map name="campusMap" id="campusMap">
		<!-- <area id="library" shape="poly" coords="803,1404,803,1294,920,1294,920,1404" alt="" name="CB" href="javascript:void(0);"/>
		<area shape="poly" coords="320,614,320,792,82,786,76,628" alt="" name="renmin_university_suzhou_campus" href="javascript:void(0);"/>
		<area shape="poly" coords="996,451,998,776,666,773,658,450" alt="" name="nanjing_university_syzhou_graduate_school" href="javascript:void(0);"/>
		<area shape="poly" coords="1132,133,1184,162,1175,370,1126,401,1075,361,1069,167" alt="" name="playground" href="javascript:void(0);"/>
		<area shape="poly" coords="1329,136,1328,287,1182,286,1184,132" alt="" name="A05" href="javascript:void(0);"/>
		<area shape="poly" coords="1608,141,1616,312,1343,302,1337,144" alt="" name="A04" href="javascript:void(0);"/>
		<area shape="poly" coords="1706,351,1476,346,1478,484,1712,484" alt="" name="A03" href="javascript:void(0);"/>
		<area shape="poly" coords="1775,501,1776,617,1615,616,1611,504" alt="" name="A02" href="javascript:void(0);"/>
		<area shape="poly" coords="1824,630,1835,756,1616,755,1617,631" alt="" name="A01" href="javascript:void(0);"/>
		<area shape="poly" coords="1608,526,1605,752,1479,748,1477,524" alt="" name="Eating_Place" href="javascript:void(0);"/>
		<area shape="poly" coords="1469,598,1460,761,1358,760,1333,745,1313,596" alt="" name="KFC" href="javascript:void(0);"/>
		<area shape="poly" coords="1076,500,1288,488,1319,775,1075,780" alt="" name="Garden" href="javascript:void(0);"/>
		<area shape="poly" coords="1900,825,58,888,57,844,1710,899" alt="" name="Ren'ai_Road" href="javascript:void(0);"/>
		<area shape="poly" coords="324,1144,321,1276,146,1273,153,1137" alt="" name="suzhou_university" href="javascript:void(0);"/>
		<area shape="poly" coords="1287,356,1460,359,1463,504,1292,504" alt="" name="MBA_hotel" href="javascript:void(0);"/>
		<area shape="poly" coords="601,1122,531,1149,476,819,416,830" alt="" name="songtao_Road" href="javascript:void(0);"/>
		<area shape="poly" coords="1480,915,1976,917,1892,1064,1517,1064" alt="" name="Global_Suzhou_College" href="javascript:void(0);"/>
		<area shape="poly" coords="2272,636,2276,690,1916,692,1916,633" alt="" name="Hanlin_Neighbourhood_Center" href="javascript:void(0);"/>
		<area shape="poly" coords="2197,719,2197,800,2019,800,2014,718" alt="" name="McDonald's" href="javascript:void(0);"/>
		<area shape="poly" coords="1422,916,1420,1059,1270,1058,1263,909" alt="" name="International_conference_center" href="javascript:void(0);"/>
		<area shape="poly" coords="1079,1018,1238,1023,1238,1094,1071,1092" alt="" name="xian'jiaotong_university_institute" href="javascript:void(0);"/>
		<area shape="poly" coords="1014,943,1009,1061,684,1052,673,947" alt="" name="foundation_building" href="javascript:void(0);"/>
		<area shape="poly" coords="1226,1232,1229,1270,1072,1268,1071,1227" alt="" name="SA" href="javascript:void(0);"/>
		<area shape="poly" coords="1228,1325,1225,1362,1076,1364,1075,1326" alt="" name="SB" href="javascript:void(0);"/>
		<area shape="poly" coords="1073,1416,1076,1453,1228,1455,1228,1416" alt="" name="SC" href="javascript:void(0);"/>
		<area shape="poly" coords="1226,1512,1228,1547,1072,1550,1072,1551" alt="" name="SD" href="javascript:void(0);"/>
		<area shape="poly" coords="1412,1232,1411,1321,1284,1316,1286,1232" alt="" name="PB" href="javascript:void(0);"/>
		<area shape="poly" coords="1439,1271,1541,1268,1541,1268,1542,1228" alt="" name="BA" href="javascript:void(0);"/>
		<area shape="poly" coords="1603,1316,1603,1352,1440,1346,1440,1316" alt="" name="BB" href="javascript:void(0);"/>
		<area shape="poly" coords="1637,1406,1638,1549,1468,1544,1469,1404" alt="" name="EB" href="javascript:void(0);"/>
		<area shape="poly" coords="1426,1510,1425,1547,1291,1548,1290,1511" alt="" name="EE" href="javascript:void(0);"/>
		<area shape="poly" coords="1284,1325,1415,1320,1423,1456,1278,1453" alt="" name="xia_chen_ground" href="javascript:void(0);"/>
		<area shape="poly" coords="" alt="" name="" href="javascript:void(0);"/>
		<area shape="poly" coords="" alt="" name="" href="javascript:void(0);"/>
		<area shape="poly" coords="" alt="" name="" href="javascript:void(0);"/> -->
		
		<c:forEach var="building" items="${buildingList }">
			<area id="ihaveid" shape="poly" coords="${building.areaCoords }" alt="" name="${building.name }" href="javascript:void(0);"/>
		</c:forEach>
	</map>
</center>>
	<script type="text/javascript"> 
		
		$("area").on('click', function () {
		    /* alert($(this).attr('name')); */ 
		    <%-- $.ajax({
	            url:"<%=basePath %>/building/selectSelective.do",
	            type:"post",
	            data:JSON.stringify({'name':$(this).attr('name')}),
	            contentType: "application/json",
	            dataType:"json",
	            success:function(data){
	            	$('#modalTitle').html(data.building.name);
	                $('#description').html('<p>'+data.building.description+'</p>');
	                $('#image').attr('src','<%=basePath %>'+data.building.imgUrl);
	            }
	        }); --%>
	        <c:forEach var="building" items="${buildingList }">
	        	var buildingName = '${building.name}';
	        	var buildingUrl = '${building.imgUrl}';
	        	if(buildingName == $(this).attr('name')){
			        $('#image').attr('src','<%=basePath %>'+buildingUrl);
	        	}
			</c:forEach>
		    $('#modal').modal('show');
		    
		});
		
	</script>
</body>
</html>