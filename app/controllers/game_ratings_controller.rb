class GameRatingsController < ApplicationController

  def create
    game = Game.find_by(id: params[:id])
    @game_rating = game.game_ratings.new(game_ratings_params)
    @game_rating.rater_id = current_user.id
    if @game_rating.save
      p @game_rating.errors.full_messages
      redirect_to game
    else
      p @game_rating.errors.full_messages
      render :game
    end
  end

  private
  def game_ratings_params
    params.require(:game_rating).permit(:rater_id, :game_id, :value)
  end
end
