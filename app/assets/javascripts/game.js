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
        return secondsRemaining
      },
      resetScore: function(){
        score = 0;
      },
      addScore: function(){
        score++
      },
      getScore: function() {
        return score
      }
  }
}()

var ready;
ready = function() {

  $('#score').text(GAME.getScore())
  $('#start').on('click', function(){
    clearInterval(GAME.getCounter())
    GAME.resetScore()
    GAME.resetSecondsRemaining()
    GAME.setCounter(setInterval(function(){
      decrementTime()
    }, 1000))
    $('#questions').show()
    $(this).hide()
    $('#finish').show()
  })
  $('#finish').on('click', function(){
    endRound()
  })
}

function endRound() {
  clearInterval(GAME.getCounter());
  $('#timer').text("00:00");
  $('.question').hide()
  $('.answer').show()
  $('#teamOneWin').show()
  $('#teamTwoWin').show()
  $('#tie').show()
  $('#finish').hide()
  $('#roundEnd').modal('show');
}

function decrementTime() {
  GAME.decrementSecondsRemaining(1)
  var secondsRemaining = GAME.getSecondsRemaining()
  if (secondsRemaining <= 0){
    endRound();
  } else {
    var minutes = parseInt(secondsRemaining / 60),
        minutesFormatted = (minutes < 10) ? '0' + minutes : minutes;
        seconds = secondsRemaining % 60,
        secondsFormatted = (seconds < 10) ? '0' + seconds : seconds;
    $('#timer').text(minutesFormatted+":"+secondsFormatted);
  }
}

$(document).ready(ready);
$(document).on('page:load', ready);