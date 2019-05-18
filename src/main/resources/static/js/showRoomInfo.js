var lessonList = null;
		
$("area").click(function () {
    $.ajax({
        url:basePath + "/room/getRoomInfo.do",
        type:"post",
        data:JSON.stringify({'id':$(this).attr('objectId')}),
        contentType: "application/json",
        dataType:"json",
        success:function(data){
        	console.log(data);
        	$('#modalTitle').html(data.room.name);
        	if (data.description) {
        		$(".hasDescription").show();
        		$(".hasNoDescription").hide();
        		$('.hasDescription p').html(data.description.content);
        		$('.userName').html(data.user.username);
        		$('.hasDescription a').attr("href",basePath+"/description/selectSelective"+servletSuffix+"?roomId="+data.room.id);
			} else {
				$(".hasDescription").hide();
        		$(".hasNoDescription").show();
				$('.hasNoDescription a').attr("href",basePath+"/pages/user/addDescription.jsp");
			}
            $('#image').attr('src',basePath+data.room.imgUrl);
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
		// console.log(startRow);

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
		// console.log(startRow);

		rows[startRow].cells[day].removeAttribute("class");
		rows[startRow].cells[day].removeAttribute("rowspan");
		rows[startRow].cells[day].innerHTML="";
		for (var i = 1; i<duration; i++){
			rows[startRow+i].cells[day].removeAttribute("style");
		}
	});
});