class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def show
    @game = Game.find(session[:game_id])
    @team_one_score = session[:team_one_score]
    @team_two_score = session[:team_two_score]
    @round = session[:round]
    @question_file = "/code_questions/#{question_files[session[:round_q]]}.rb"
    @answer_file = "/code_answers/#{question_files[session[:round_q]]}_answer.rb"
  end

  def update
    game = Game.find(session[:game_id])

    if params[:team_one_score]
      session[:team_one_score] += 1
    elsif params[:team_two_score]
      session[:team_two_score] += 1
    end

    if session[:round] == (game.team_one_array.length - 1)
      session[:round] = 0
    else
      session[:round] += 1
    end

    if session[:round_q] == (question_files.length - 1)
      session[:round_q] = 0
    else
      session[:round_q] += 1
    end

    redirect_to "/game"
  end

  def create
    @game = Game.new(games_params)
    if @game.save
      session[:game_id] = @game.id
      session[:team_one_score] = 0
      session[:team_two_score] = 0
      session[:round] = 0
      session[:round_q] = 0
      redirect_to @game
    else
      render :new
    end
  end

  private
  def question_files
    ["foobar","fizzbuzz","shopping_cart","class_mix"]
  end
  def games_params
    params.require(:game).permit(:team_one, :team_two)
  end
end
