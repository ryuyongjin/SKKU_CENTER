/* 모바일 네비게이션 */
$(function(){
	$('#mBtnMenu').click(function () {
		if ( $( ".mSubmenu" ).is( ":hidden" ) ) {
			$( ".mSubmenu" ).slideDown( "slow" );
			$('#mBtnMenu').removeClass("mBtn btn_open");
			$('#mBtnMenu').addClass("mBtn btn_close");
		} else {
			$( ".mSubmenu" ).slideUp('fast');
			$('#mBtnMenu').removeClass("mBtn btn_close");
			$('#mBtnMenu').addClass("mBtn btn_open");
		}
	});
});



/* gnb 페이지인식 */
function setPage(arg) {
 var page = jQuery.extend({
  hn : "", 
  sn : "",
  snFirst : "",
  snSecond : "",
  snThird : "",
  snFourth  : "",
  snFifth  : ""
 }, arg ||{});
 if(page.hn) {
  $(".gnb h2.hn" + page.hn + " a").addClass("on");
 }
 if(page.sn) {
  $(".lnb li.sn" + page.sn + " a").addClass("on");
 }
 if(page.snFirst) {
  $(".lnb li.sn" + page.sn + " a").addClass("");
  $(".lnb li.snFirst" + page.snFirst + " a").addClass("on");
 }
 if(page.snSecond) {
  $(".lnb li.sn" + page.sn + " a").addClass("");
  $(".lnb li.snSecond" + page.snSecond + " a").addClass("on");
 }
 if(page.snThird) {
  $(".lnb li.sn" + page.sn + " a").addClass("");
  $(".lnb li.snThird" + page.snThird + " a").addClass("on");
 }
 if(page.snFourth) {
  $(".lnb li.sn" + page.sn + " a").addClass("");
  $(".lnb li.snFourth" + page.snFourth + " a").addClass("on");
 }
 if(page.snFifth) {
  $(".lnb li.sn" + page.sn + " a").addClass("");
  $(".lnb li.snFifth" + page.snFifth + " a").addClass("on");
 }
 
}


/*     GNB_네비게이션     */

var globalMenuOnOff = 'off';
function globalMenu(menu,mode)
{
 if(mode == 'open')
 {
  globalMenuOnOff = 'on';
  
  $('.sub_nav_box').hide();
  $('#sub_'+menu).slideDown('fast'); 
  for(var i=0;i<$('.menuImg').length;i++)
  {
   $('.menuImg').eq(i).attr('src',$('.menuImg').eq(i).attr('src').replace('_on.gif','.gif'));
  }
  $('#'+menu).find('.menuImg').attr('src',$('#'+menu).find('.menuImg').attr('src').replace('.gif','_on.gif'));
  $('#sub_'+menu).bind('mouseleave',function(){
   setTimeout("globalMenu('"+menu+"','close');",500);
  });
 }
 else if(mode == 'close' && globalMenuOnOff == 'off')
 {
  $('#sub_'+menu).hide();
  $('#'+menu).find('.menuImg').attr('src',$('#'+menu).find('.menuImg').attr('src').replace('_on.gif','.gif'));
 }
}
$(document).ready(function(){
 $('.gnb .globalMenu').hover(
  function(){
   globalMenu($(this).attr('id'),'open');
  },
  function(){
   globalMenuOnOff = 'off';
   setTimeout("globalMenu('"+$(this).attr('id')+"','close');",500);
  }
 );
 $('.sub_nav_box').hover(
  function(){
   globalMenuOnOff = 'on';
  },
  function(){
   globalMenuOnOff = 'off';
  }
 );
 
 $('.sub_nav_box .sub_nav li').hover(
  function(){
   $(this).addClass('on');
  },
  function(){
   $(this).removeClass('on');
  }
 );

 
});
/*     GNB_네비게이션     */