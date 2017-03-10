class GamesController < ApplicationController
  def index
    @games = Game.all
    # @game = Game.find_by(id: params[:id])
  end

  def show
    @game_rating = GameRating.new
    @game = Game.find_by(id: params[:id])
  end

end
