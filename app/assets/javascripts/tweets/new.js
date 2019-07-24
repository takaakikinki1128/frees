$(function(){
  $(".new-btn").hover(function(){
    $(this).stop().animate({'color': '#FFF', 'backgroundColor': 'black'}, 300);
  },function(){
    $(this).stop().animate({'color': 'black', 'backgroundColor': '#FFF'}, 300);
  })

  $("#new_tweet").validate({
    rules : {
      "tweet[name]": {
        required: true
       },
      "tweet[text]": {
        required: true
       },
       "category_id": {
        required: true
       }
      },
      messages: {
        "tweet[name]": {
          required: " 入力してください"
         },
        "tweet[text]":{
            required: "入力してください"
         }
      },
      errorPlacement: function(error, element) {
        if(element.attr("name")=="tweet[name]")
        {
          error.insertAfter(".error-new-name");	
        }
        else if(element.attr("name")=="tweet[text]") {
          error.insertAfter(".error-new-text");
        }
        else{
          error.insertAfter(element);	
        }
      }
      
  })
        

})