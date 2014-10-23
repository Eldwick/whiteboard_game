var ready;
var teamOneIndex = 1;
var teamTwoIndex = 1;

ready = function() {
  $( '#addTeamOne' ).keypress(function(e) {
    if(e.which == 13) {
      var userDiv = document.createElement('div');
      userDiv.innerHTML = teamOneIndex + " - " + this.value;
      $(userDiv).hide()
      $("#teamOneMembers").append(userDiv);
      $(userDiv).show("slow")

      currentMembers = $("#team_one").val();
      new_member = $("#team_one").val() == '' ? this.value : ',' + this.value;
      all_members = currentMembers + new_member;
      $("#team_one").val(all_members);

      $(this).val('');
      teamOneIndex++;
    }
  })

  $( '#addTeamTwo' ).keypress(function(e) {
    if(e.which == 13) {
      var userDiv = document.createElement('div');
      userDiv.innerHTML = teamTwoIndex + " - " + this.value;
      $(userDiv).hide()
      $("#teamTwoMembers").append(userDiv);
      $(userDiv).show("slow")

      currentMembers = $("#team_two").val();
      new_member = $("#team_two").val() == '' ? this.value : ',' + this.value;
      all_members = currentMembers + new_member;
      $("#team_two").val(all_members);

      $(this).val('')
      teamTwoIndex++;
    }
  })
}

$(document).ready(ready);
$(document).on('page:load', ready);