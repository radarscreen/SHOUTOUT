$(document).ready(function() {

  var currentShoutID = 0;

  function initialize () {
    setInterval(function () {shoutLoop();}, 5000); 
  }

  function shoutLoop () {
    console.log(profileId);
    $.ajax({
<<<<<<< HEAD
      url: "http://shoutout01.herokuapp.com/profiles/"+profileId+"/shouts",
      dataType : "json",
      success: function (shouts){
        shouts.forEach(function(value) {

          if (value.id > currentShoutID) {
            currentShoutID = value.id;
            console.log("currentShoutID = " + currentShoutID);

            if (profileId != value.profile_id) {
              $(".shouts").prepend("<li><a href=http://shoutout01.herokuapp.com/profiles/"+profileId+"/shouts/"+value.id+">"+value.title+"</a></li>");
=======
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
>>>>>>> 7ea1dd6c65a9de9bf052038bac6056d041a94baf
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
