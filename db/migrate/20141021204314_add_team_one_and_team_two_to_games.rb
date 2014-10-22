class AddTeamOneAndTeamTwoToGames < ActiveRecord::Migration
  def change
    add_column :games, :team_one, :string
    add_column :games, :team_two, :string
  end
end
