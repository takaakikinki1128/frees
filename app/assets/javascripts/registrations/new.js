$(function(){
  $(".sing-btn").hover(function(){
    $(this).stop().animate({'color': '#FFF', 'backgroundColor': 'black'}, 300);
  },function(){
    $(this).stop().animate({'color': 'black', 'backgroundColor': '#FFF'}, 300);
  })

  $("#new_user").validate({
    rules : {
      "user[nickname]": {
        required: true
       },
      "user[email]": {
        required: true
       },
       "user[password]": {
        required: true
       }
      },
      messages: {
        "user[nickname]": {
          required: " 入力してください"
         },
        "user[email]":{
            required: "入力してください"
         },
        "user[password]":{
          required: "入力してください"
        }

      },
      errorPlacement: function(error, element) {
        if(element.attr("name")=="user[nickname]")
        {
          error.insertAfter(".error-devise-nickname");	
        }
        else if(element.attr("name")=="user[email]") {
          error.insertAfter(".error-devise-email");
        }
        else if(element.attr("name")=="user[password]") {
          error.insertAfter(".error-devise-password");
        }
        else{
          error.insertAfter(element);	
        }
      }
      
  })
})