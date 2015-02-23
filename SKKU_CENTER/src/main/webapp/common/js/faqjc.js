


/* FAQ */

$(function(){

$(".faq ul > li .answer").hide();
$(".faq ul > li .question").eq(0).addClass("on");
$(".faq ul > li .answer").eq(0).show();

var qBox = $(".faq ul > li .question");

qBox.bind('click',function(){
	if ( !$(this).hasClass('on') ) {
		qBox.removeClass('on');
		qBox.closest('li').find('.answer').slideUp(300);
		$(this).addClass('on');
		$(this).closest('li').find('.answer').slideDown(300);
		return false;
	} else {
		$(this).removeClass('on');
		$(this).closest('li').find('.answer').slideUp(300);
		return false;
	}
});
});

