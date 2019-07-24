$(function(){
  $(".login-btn").hover(function(){
    $(this).stop().animate({'color': '#FFF', 'backgroundColor': 'black'}, 300);
  },function(){
    $(this).stop().animate({'color': 'black', 'backgroundColor': '#FFF'}, 300);
  })

  
})