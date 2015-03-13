$(document).ready(function() {

  function initialize () {
    setInterval(function () {shoutLoop();}, 5000); 
  }

  function shoutLoop () {
    console.log("test2");
    $.ajax({
      url: "http://localhost:3000/profiles/47/shouts",
      dataType : "json",
      success: function (data){
        data.Search.forEach(function(value) {
          console.log("test3");
          console.log(value.username);
          $("body").append("<h4>" + value.username + "</h4>");
        });
      },
      error: function(err) {
        console.log("test4");
      }
    });
  }

initialize();

});