class OwnershipsController < ApplicationController

  def create
    @game = Game.find_by(id: params[:game_id])
    if current_user && @game.ownerships.where("owner_id = #{current_user.id}").count == 0
      @ownership = Ownership.new(owner_id: params[:owner_id], game_id: params[:game_id])
      if @ownership.save
        redirect_to "/users/#{current_user.id}"
      else
        redirect_to "/"
      end
    end
  end

  def destroy
    @ownership = Ownership.find_by(owner_id: params[:owner_id], game_id: params[:game_id])
    @ownership.destroy
    redirect_to "/users/#{current_user.id}"
  end


end
