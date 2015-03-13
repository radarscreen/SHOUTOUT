$(document).ready(function() {

  var currentShoutID = 0;

  function initialize () {
    setInterval(function () {shoutLoop();}, 5000); 
  }

  function shoutLoop () {
    console.log(profileId);
    $.ajax({
      url: "http://shoutout01.herokuapp.com/profiles/"+profileId+"/shouts",
      dataType : "json",
      success: function (shouts){
        shouts.forEach(function(value) {

          if (value.id > currentShoutID) {
            currentShoutID = value.id;
            console.log("currentShoutID = " + currentShoutID);
            $(".shouts").prepend("<li>" + value.title + "</li>");

            $(".shouts").prepend("<li><a href=http://shoutout01.herokuapp.com/profiles/"+profileId+"/shouts/"+value.id+">"+value.title+"</a></li>");
          }


        });
      },
      error: function(err) {
      }
    });
  }

initialize();

});