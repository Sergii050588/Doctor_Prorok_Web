$(document).on('turbolinks:load', function() {

	$(".slider").owlCarousel({
	items: 1,
	nav: true,
	navText: [ , ],
	dots: false,
	autoplay: true,
	autoplayTimeout: 3000,
	autoplayHoverPause: true,
	loop: true,
	mouseDrag: true
	});


	$(".mobile-menu").click(function(){
		$(".mobile-menu").toggleClass("open");
		$(".main-menu").toggleClass("open");
		$(".nav-bg").toggleClass("open");
	});

	$(".nav-bg").click(function(){
		$(".mobile-menu").toggleClass("open");
		$(".main-menu").toggleClass("open");
		$(".nav-bg").toggleClass("open");
	});

	// $(".main-menu").click(function(){
	// 	$(".main-menu").removeClass("open");
	// 	$(".mobile-menu").removeClass("open");
	// });

	$('.faq-item').find('div').click(function(){
       $(this).next().stop().slideToggle();
   }).next().stop().hide();

});

