class GamesController < ApplicationController
  def index
    @games = Game.all
    # @game = Game.find_by(id: params[:id])
  end

  def show
    @game = Game.find_by(id: params[:id])
  end

end
