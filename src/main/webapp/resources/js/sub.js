$(document).ready(function() {
	$('.depths_sub.active').addClass('open').children('ul').show();
	$('.depth_sub > a').on('click', function(){
		var element = $(this).parent('li');
		if (element.hasClass('open')) {
			element.removeClass('open');
			element.find('a').removeClass('open');
			element.find('li').removeClass('open');
			element.find('ul').slideUp(200);
		}
		else {
			element.addClass('open');
			element.find('a').addClass('open');
			element.children('ul').slideDown(200);
			element.siblings('li').children('ul').slideUp(200);
			element.siblings('li').removeClass('open');
			element.siblings('li').children('a').removeClass('open');
			element.siblings('li > a').removeClass('open');
			element.siblings('li').find('ul').slideUp(200);
		}
		
	});	 
     
});

$(document).ready(function() {
	$('.depths_sub.active').addClass('open').children('ul').show();
	$('.depth_sub2 > a').on('click', function(){
		var element = $(this).parent('li');
		if (element.hasClass('open')) {
			element.removeClass('open');
			element.find('a').removeClass('open');
			element.find('li').removeClass('open');
			element.find('ul').slideUp(200);
		}
		else {
			element.addClass('open');
			element.find('a').addClass('open');
			element.children('ul').slideDown(200);
			element.siblings('li').children('ul').slideUp(200);
			element.siblings('li').removeClass('open');
			element.siblings('li').children('a').removeClass('open');
			element.siblings('li > a').removeClass('open');
			element.siblings('li').find('ul').slideUp(200);
		}
		
	});	 
     
});
  