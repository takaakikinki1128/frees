$(function(){
  console.log(document)
  $('.item-button-click').on("click",function(){
    $('.star-click-icon').css('color','red')
    $(this).attr('class','item-button-dislike')
  })
  $('.item-button-dislike').on("click",function(){
    console.log("dis");
    $('.star-delete-icon').css('color','#888');
  });
 

})



$(function(){
  $('.comment-btn').hover(function(){
    $(this).stop().animate({'color': '#FFF', 'backgroundColor': 'black'}, 300);
  },function(){
    $(this).stop().animate({'color': 'black', 'backgroundColor': '#FFF'}, 300);
  })
})

$(function(){
  $(".vvv").hover(function(){
    $(this).css('color','black')
  },function(){
    $(this).css('color','#666')
  })
  
  $('.comments-delete-btn').hover(function(){
    $(this).stop().animate({'font-size':'23px'}, 250);
  },function(){
    $(this).stop().animate({'font-size':'18px'}, 250);
  })
  $('.comments-edit-btn').hover(function(){
    $(this).stop().animate({'font-size':'23px'}, 250);
  },function(){
    $(this).stop().animate({'font-size':'18px'}, 250);
  })
  $(".tweet-user_name").hover(function(){
    $(this).css('color','black')
  },function(){
    $(this).css('color','#666')
  })
})