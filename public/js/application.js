$(document).ready(function() {

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
