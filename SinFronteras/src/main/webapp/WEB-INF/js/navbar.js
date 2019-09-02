$(".sub-navbar-btn").click(function(){
    $(this).children("ul").slideToggle();
})

$("ul").click(function(propagacion){
    propagacion.stopPropagation();
})