class GamesController < ApplicationController
  def index
    @games = Game.all
    @ownership = Ownership.find_by(game_id: params[:game_id], owner_id: params[:owner_id])
  end

  def show
    @game_rating = GameRating.new
    @game = Game.find_by(id: params[:id])
  end

end
