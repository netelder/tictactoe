$(document).ready(function() {

  $('#new_game').on('click', function(e){
    e.preventDefault();
    $.ajax({
      type:  "POST",
      url:  "/game/start/" + userId
    }).done(function (response){
      var link = "/game/" + response.gameId + "/user/"+response.userId;
      $("#waiting_players").append('<li><a href=' + link + '>'+ response.userName + '</a></li>');
    });
  });

  $('#board').on('click', 'td', function (e) {
    var cell = e.target;
    if (e.class === "empty") {
      $.ajax({
        url: '/game/'+gameId+'/user/'+userId,
        type: 'POST',
        data: cell.id
      });
    }
  });



});

