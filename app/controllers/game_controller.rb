class GameController < ApplicationController
  def show
    @game = Game.find(session[:game_id])
    @team_one_score = session[:team_one_score]
    @team_two_score = session[:team_two_score]
    @round = session[:round]
  end

  def update
    game = Game.find(session[:game_id])
    
    if params[:team_one_score]
      session[:team_one_score] += 1
    else
      session[:team_two_score] += 1
    end

    if session[:round] == (game.team_one_array.length - 1)
      session[:round] = 0
    else
      session[:round] += 1
    end

    redirect_to "/game"
  end

  def create
    game = Game.create(team_one: params[:team_one], team_two: params[:team_two])
    session[:game_id] =  game.id
    session[:team_one_score] = 0
    session[:team_two_score] = 0
    session[:round] = 0
    redirect_to "/game"
  end

  private

  def games_params
    params.require(:game).permit(:team_one, :team_two)
  end
end
