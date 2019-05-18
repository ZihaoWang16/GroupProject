$(".userIcon").on("click", function(){
		window.location.href = basePath+"/pages/user/userProfile.jsp";
	})
	
$(".homeIcon").on("click", function(){
	window.location.href = basePath;
})

$("#topBar").hover(function(){
    $(".searchBar").css("display", "block");
    $(".searchBar").toggleClass("fadeInDown fadeOutUp");
},function(){
    /* $(".searchBar").css("display", "none"); */
    $(".searchBar").toggleClass("fadeInDown fadeOutUp");
});