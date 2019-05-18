$(".groupIcon").on('click', function () {
	var imgTag = $(this).find('img');
	if($(imgTag).attr("src").indexOf("groupOutlined")!=-1){
		
		$.ajax({
			url:basePath+"/room/getOccupiedRoom.do",
            type:"post",
            data:JSON.stringify({'buildingId':buildingId,'floorId':floorId}),
            contentType: "application/json",
            dataType:"json",
            success:function(data){
            	if(data!=null){
            		data.forEach(function(room, index) { 
            			var coordsStr = room.areaCoords;
            			var coordsArr = coordsStr.split(",");
            			var coordsArrLength = coordsArr.length;
            			var vertexArr = [];
            			
            			for(var i=0; i<coordsArrLength; i=i+2){
            				if (coordsArr[i]!=""&&coordsArr[i+1]!="") {
	            				vertexArr.push({
	            					x: parseInt(coordsArr[i]),
	            					y: parseInt(coordsArr[i+1]),
	            				});
							}
            			}
            			var vertexArrLength = vertexArr.length;
            			var subAreaSum = 0;
            			var subCentroidXSum = 0;
            			var subCentroidYSum = 0;
            			
            			for(var i=2; i<vertexArrLength; i++){
            				var p0 = vertexArr[0];
            				var p1 = vertexArr[i-1];
            				var p2 = vertexArr[i];
            				var subArea = (p0.x*p1.y + p1.x*p2.y + p2.x*p0.y - p1.x*p0.y - p2.x*p1.y - p0.x*p2.y)/2;
            				var subCentroidX = (p0.x+p1.x+p2.x)/3;
            				var subCentroidY = (p0.y+p1.y+p2.y)/3;
            				
            				subAreaSum += subArea;
            				subCentroidXSum += subCentroidX*subArea;
            				subCentroidYSum += subCentroidY*subArea;
            			}
            			var height = 60;
            			var centroid = {
            				x: 	parseInt(subCentroidXSum/subAreaSum - height/2),
            				y: 	parseInt(subCentroidYSum/subAreaSum - height/2),
            			};
            			
            			$("#content").append('<img class="occupiedRoom" style="position: absolute;left:'+centroid.x+'px;top:'+centroid.y+'px;height:'+height+'px" src="'+basePath+'/static/images/icon/group.png" alt="" border="0"></img>');
            		})
           		}
            }
			
		});
		
		$(imgTag).attr("src",basePath+"/static/images/icon/group.png");
	}else{
		$(imgTag).attr("src",basePath+"/static/images/icon/groupOutlined.png");
		$(".occupiedRoom").remove();
	}
})