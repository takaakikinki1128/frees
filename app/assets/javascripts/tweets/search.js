$(function(){

  var search_tweets = $('.search-end');

  function appendTweet(tweet){
    var html = `<div class ="search-name>"${ tweet.name }</div>`

    search_tweets.append(html);
  }

  function appendErrMsgToHTML(msg){
    var html = `<div class ="search-msg">${msg}</div>`

    search_tweets.append(html);

  }

  $('.search_query').on('keyup',function(){
    var input = $(".search_query").val();

    $.ajax({
      type: 'GET',
      url: '/tweets/search',
      data: { keyword: input },
      dataType: 'json'
      })
      .done(function(tweets) {
        $(".listview.js-lazy-load-images").empty();
        if (tweets.length !== 0) {
          tweets.forEach(function(tweet){
            appendTweet(tweet);
          });
        }
        else {
          appendErrMsgToHTML("一致するものがありません");
        }
      })
  })
})