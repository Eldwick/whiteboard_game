var teamOneIndex = 1;
var teamTwoIndex = 1;

initAddMembers = function() {
  $( '#newMemberForTeamOne' ).keypress(function(e) {
    if(e.which == 13) {
      var userItem = document.createElement('li');
      userItem.innerHTML = this.value;
      $("#teamOneMembers").append(userItem);

      currentMembers = $("#team_one").val();
      new_member = ($("#team_one").val() === '') ? this.value : ',' + this.value;
      all_members = currentMembers + new_member;
      $("#team_one").val(all_members);

      $(this).val('');
      teamOneIndex++;
    }
  });

  $( '#newMemberForTeamTwo' ).keypress(function(e) {
    if(e.which == 13) {
      var userItem = document.createElement('li');
      userItem.innerHTML = this.value;
      $("#teamTwoMembers").append(userItem);

      currentMembers = $("#team_two").val();
      new_member = ($("#team_two").val() === '') ? this.value : ',' + this.value;
      all_members = currentMembers + new_member;
      $("#team_two").val(all_members);

      $(this).val('');
      teamTwoIndex++;
    }
  });
};


var GAME = function() {
  var counter,
      secondsRemaining,
      score = 0;
    return {
      setCounter: function(interval) {
        counter = interval;
      },
      getCounter: function(){
        return counter;
      },
      decrementSecondsRemaining: function(seconds) {
        secondsRemaining -= seconds;
      },
      resetSecondsRemaining: function() {
        secondsRemaining = $('#timer').data('time');
      },
      getSecondsRemaining: function() {
        return secondsRemaining;
      },
      resetScore: function(){
        score = 0;
      },
      addScore: function(){
        score++;
      },
      getScore: function() {
        return score;
      }
  };
}();

var initGame;
initGame = function() {
  $('#score').text(GAME.getScore());
  $('#start').on('click', function(){
    clearInterval(GAME.getCounter());
    GAME.resetScore();
    GAME.resetSecondsRemaining();
    GAME.setCounter(setInterval(function(){
      decrementTime();
    }, 1000));
    $('#questions').show();
    $(this).hide();
    $('#finish').show();
  });
  $('#finish').on('click', function(){
    endRound();
  });
};

endRound = function() {
  clearInterval(GAME.getCounter());
  $('#timer').text("00:00");
  $('.question').hide()
  $('.answer').show()
  $('#teamOneWin').show();
  $('#teamTwoWin').show();
  $('#tie').show();
  $('#finish').hide();
  $('#roundEnd').modal('show');
};

decrementTime = function() {
  GAME.decrementSecondsRemaining(1);
  var secondsRemaining = GAME.getSecondsRemaining();
  if (secondsRemaining <= 0){
    endRound();
  } else {
    var minutes = parseInt(secondsRemaining / 60, 10),
        minutesFormatted = (minutes < 10) ? '0' + minutes : minutes;
        seconds = secondsRemaining % 60;
        secondsFormatted = (seconds < 10) ? '0' + seconds : seconds;
    $('#timer').text(minutesFormatted+":"+secondsFormatted);
  }
};

$(document).ready(function() {
  initAddMembers();
  initGame();
});
