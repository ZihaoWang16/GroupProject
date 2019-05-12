var originWeight;
var originHeight;
var currentWeight;
var currentHeight;
var originCoordsList = [];

var img = new Image();
img.src = basePath + floorImgUrl;

if(img.complete){
    alert('from:complete : width:'+img.width+',height:'+img.height);
}else{
    img.onload = function(){
        originWeight = img.width;
        originHeight = img.height;
        
		$("area").each(function(i, e){
        	originCoordsList.push($(e).attr("coords"));
        });
		
        changeAreaCoords();
    }
}

/*window.onresize = changeAreaCoords;*/

function changeAreaCoords(){ 
	currentWeight = $('#map').width();
    currentHeight = $('#map').height();
    $("area").each(function(i, e){
    	var coordsArray = originCoordsList[i].split(",");
    	var currentCoords = "";
    	for(j = 0, len = coordsArray.length; j < len; j++) {
    		if(coordsArray[j]!=null && coordsArray[j]!=""){
    			if(j%2==0){
    				// x
    				currentCoords += parseInt(coordsArray[j]*currentWeight/originWeight) + ",";
    			}else{
    				// y
    				currentCoords += parseInt(coordsArray[j]*currentHeight/originHeight) + ",";
    			}
    		}
    	}
    	$(e).attr("coords",currentCoords);
    });
}