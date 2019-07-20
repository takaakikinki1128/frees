$(function(){
  $(".saerch__bottun").hover(function(){
    $(this).stop().animate({'color': '#FFF', 'backgroundColor': '#666'}, 300);
  },function(){
    $(this).stop().animate({'color': '#666', 'backgroundColor': '#FFF'}, 300);
  })
})