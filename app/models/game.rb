class Game < ActiveRecord::Base

  def add_member(team_one, team_two)
    @team_one = team_one
  end

  def team_one_array
    self.team_one.split(',')
  end

  def team_two_array
    self.team_two.split(',')
  end
end
