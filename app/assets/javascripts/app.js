$(document).ready(function() {

  var currentShoutID = 0;

  function initialize () {
    setInterval(function () {shoutLoop();}, 5000); 
  }

  function shoutLoop () {

    $.ajax({
      url: "http://shoutout01.herokuapp.com/profiles/47/shouts",
      dataType : "json",
      success: function (shouts){
        shouts.forEach(function(value) {
          if (value.id > currentShoutID) {
            currentShoutID = value.id;
            console.log("currentShoutID = " + currentShoutID);
            $(".shouts").prepend("<h4>" + value.title + "</h4>");

          }

        });
      },
      error: function(err) {
      }
    });
  }

initialize();

});