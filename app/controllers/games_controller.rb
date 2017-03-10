class GamesController < ApplicationController
  def index
    @ownership = Ownership.find_by(game_id: params[:game_id], owner_id: current_user.id)
    @games = Game.all
  end

  def show
    @game_rating = GameRating.new
    @game = Game.find_by(id: params[:id])
  end

end
