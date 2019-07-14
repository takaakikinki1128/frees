$(function(){
  $('.show-btn').hover(function(){
    $(this).stop().animate({'font-size':'23px'}, 250);
  },function(){
    $(this).stop().animate({'font-size':'18px'}, 250);
  })
})