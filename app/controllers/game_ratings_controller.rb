class GameRatingsController < ApplicationController

  def create
    game = Game.find_by(id: params[:id])
    @game_rating = game.game_ratings.new(game_ratings_params)
    redirect_to :game
  end

  private
  def game_ratings_params
    params.require(:game_rating).permit(:rater_id, :game_id, :value)
  end
end
