$(document).ready(function() {

  console.log(userId);

$('#new_game').on('click', function(e){
  e.preventDefault();
  $.ajax({
    type:  "POST",
    url:  "/game/start/" + userId
  }).done(function (response){
  console.log(response);
$("#waiting_players li").append('<li><a href="game/' + response.game_id + response.username + '>response.username</a></li>');
    });
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

