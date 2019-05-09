$(document).on('ready', function () {
	var lessonList = null;
	    /* alert($(this).attr('name')); */ 
	    $.ajax({
            url:"<%=basePath %>/facility/selectSelective.do",
            type:"post",
            data:JSON.stringify({'name':$(this).attr('name')}),
            contentType: "application/json",
            dataType:"json",
            success:function(data){
            	$('#modalTitle').html(data.facility.name);
                $('#description').html('<p>'+data.facility.description+'</p>');
                $('#image').attr('src','<%=basePath %>'+data.facility.imgUrl);
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
		});
		$("table#timetable").show();
	}
	
	$("#modal").on("hidden.bs.modal", function() {
		var tb = document.getElementById('tableBody');    // table 的 id
		var rows = tb.rows;                           // 获取表格所有行
		
		});
	});