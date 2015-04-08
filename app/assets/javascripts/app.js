$(document).ready(function() {

  var currentShoutID = 0;

  function initialize () {
    setInterval(function () {shoutLoop();}, 5000); 
  }

  function shoutLoop () {

    $.ajax({
      url: "http://localhost:3000//profiles/"+profileId+"/shouts",
      dataType : "json",
      success: function (shouts){
        shouts.forEach(function(value) {
          
          if (value.id > currentShoutID) {
            currentShoutID = value.id;
            console.log("currentShoutID = " + currentShoutID);
            console.log("currentShoutID = " + currentShoutID);

            if (profileId != value.profile_id) {
              $(".shouts").first().prepend("<li><a href=http://shoutout01.herokuapp.com/profiles/"+profileId+"/shouts/"+value.id+">"+value.title+"</a></li>");
            }
          }

        });
      },
      error: function(err) {
      }
    });
  }

initialize();

});
