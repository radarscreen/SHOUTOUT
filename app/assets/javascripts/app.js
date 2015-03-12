$(document).ready(function() {


  function initialize () {
    setInterval(function () {shoutLoop();}, 2500); 
  }

  function shoutLoop () {
    $.getJSON('http://api.open-notify.org/iss-now.json?callback=?', function(data) {

      var newID = {
        // id: whatever the db retutns
      };

      if (newID > oldID)  {

        // this is where we extract the data

        oldID = newID;
      }

    });
  }


initialize();

});