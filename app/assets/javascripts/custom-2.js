$(document).ready(function(){
	$('.bxslider').bxSlider({
		mode: 'fade',
		pagerCustom: '#bx-pager',
		adaptiveHeight: true
	});
	$('.bannerslider').bxSlider({
		mode: 'horizontal',
		moveSlides: 1,
		slideMargin: 40,
		infiniteLoop: true,
		auto: true,
		minSlides: 1,
		maxSlides: 1,
		speed: 800,
 });
	$('.grouplider').bxSlider({
		mode: 'horizontal',
		moveSlides: 1,
		slideMargin: 40,
		infiniteLoop: true,
		auto: true,
		minSlides: 1,
		maxSlides: 1,
		speed: 600,
		autoDelay: 500,
 });
 	 
});



$(document).ready(function() {
	$('.fancybox').fancybox();
});



var main = function() {		
    $('.icon-menu').click(function() {
        $('.navigation').animate({
            left: "0px"
        }, 200);
        $('body').animate({
            left: "285px"
        }, 200);
    });
    $('.icon-close').click(function() {
        $('.navigation').animate({
            left: "-285px"
        }, 200);
        $('body').animate({
            left: "0px"
        }, 200);
    });
};
$(document).ready(main);
