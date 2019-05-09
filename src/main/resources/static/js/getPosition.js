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