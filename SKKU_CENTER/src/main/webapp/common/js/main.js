/* magin_visual : START ******************************************************************/
$(document).ready(function(){
 
 $('.mainVisual').mouseover(function(){
  $(this).find('.btn_left').show();
  $(this).find('.btn_right').show();
 });
 $('.mainVisual').mouseleave(function(){
  $(this).find('.btn_left').show();
  $(this).find('.btn_right').show();
 });
 
 $('.btn_left a').click(function(){
  rollingDirection = 'left';
  autoRolling('click');
  resetRolling();
 });
 $('.btn_right a').click(function(){
  rollingDirection = 'right';
  autoRolling('click');
  resetRolling();
 });
 $('.cnt img').click(function(){
  bannerNum = $(this).attr('id').replace('bannerOpt','');
  autoRolling('click');
  resetRolling();
 });
 preloadImages('text1');
 preloadImages('text2');
 autoRolling();
 resetRolling();
});
var rollingDirection = 'right';
var bannerNum = 2;
function autoRolling(type)
{
 if(rollingDirection == 'left')
 {
  bannerNum--;
 }
 else if(rollingDirection == 'right')
 {
  bannerNum++;
 }
 if(bannerNum > 2)
 {
  bannerNum = 0;
 }
 else if(bannerNum < 0)
 {
  bannerNum = 2;
 }
 if(type == 'click')
 {
  for(var i=0;i<3;i++)
  {
   $('#rollingBanner').children().eq(i).hide();
  }
 }
 $('#rollingBanner').children().fadeOut(500);
 $('#rollingBanner').children().eq(bannerNum).fadeIn(3000);
 $('.text1').hide();
 $('.text2').hide();
 $('#rollingBanner_text_'+bannerNum+' .text1').fadeIn(2000);
 $('#rollingBanner_text_'+bannerNum+' .text2').fadeIn(3000);

 $('.cnt img').attr('src',$('.cnt img').attr('src').replace('_on.gif','.gif'));
 $('.cnt img').eq(bannerNum).attr('src',$('.cnt img').eq(bannerNum).attr('src').replace('.gif','_on.gif'));
}
function resetRolling()
{
 if(typeof(autoTimer) != 'undefined')
 {
  clearInterval(autoTimer);
 }
 autoTimer = setInterval(function(){
  autoRolling();
 },7000);
}
function preloadImages(className)
{
 var c = new Array();
 $('.'+className+' img').each( function(j){
  c[j] = new Image();
  c[j].src = this.src;
  if ( $.browser.msie )
  {
   this.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='image',src='"+ this.src +"')";
  }
 });
}
/* magin_visual : END ******************************************************************/