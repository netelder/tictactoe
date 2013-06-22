$(document).ready(function() {

  $('#new_game').on('click', function(e){
    e.preventDefault();
    $.ajax({
      type:  "POST",
      url:  "/game/start/" + userId
    }).done(function (response){
      var link = "/game/" + response.gameId + "/user/1/"+response.userId + '/start';
      window.location.href = link;
    });
  });

  $('#board').on('click', 'td', function (e) {
    var cell = e.target;
    var klass = $(cell).attr('class');
    if (klass === "empty") {
      $.ajax({
        url: '/game/'+gameId+'/user/'+userId,
        type: 'POST',
        data: {cell_id: cell.id}
      });
    }
  });

});

