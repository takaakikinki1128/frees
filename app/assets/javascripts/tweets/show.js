$(function(){
  $('.item-button-click').on("click",function(){
    $('.star-click-icon').css('color','red')
  })
  $('.item-button-dislike').on("click",function(){
    $('.star-delete-icon').css('color','#888')
  })
})

$(function(){
  $('.aaa').on("click",function(){
    $('.comment_text').css('display','block')
  })
})

$(function(){
  $('.comment-btn').hover(function(){
    $(this).stop().animate({'color': '#FFF', 'backgroundColor': 'black'}, 300);
  },function(){
    $(this).stop().animate({'color': 'black', 'backgroundColor': '#FFF'}, 300);
  })
})