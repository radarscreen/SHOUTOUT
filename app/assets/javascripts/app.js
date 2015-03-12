$(document).ready(function() {


  function initialize () {
    setInterval(function () {shoutLoop();}, 5000); 
  }

  function shoutLoop () {

    $.ajax({
      url: "https://dataclips.heroku.com/ykzjhdqdkuzhwfrlgxmilbijctxk-profiles",
      dataType : "json",
      success: function (data){
        data.Search.forEach(function(value) {
          console.log(value);
          $("body").append("<h4>" + value.username + "</h4>");
        });
      }
    });


  }


initialize();

});