$(document).ready(function() {
$('#new_game').on('submit', function(e){
  e.preventDefault();
  $.ajax({
    Type:  "POST",
    Url:  "/game/start/" + '<%= user.id %>',
    Data:  "json"
  }).done(function (response){
  console.log(response);
$("#waiting_players li").append('<li><a href="game/' + response.game_id + response.username + '>response.username</a></li>');
    });
  )};
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
