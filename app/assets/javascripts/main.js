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
		console.log($(".mobile-menu"));
	});

	$(".main-menu").click(function(){
		$(".main-menu").removeClass("open");
		$(".mobile-menu").removeClass("open");
	});

});

