class WelcomeController < ApplicationController
  def index
    @game1 = Game.new()
    @game2 = Game.new()
  end
end
