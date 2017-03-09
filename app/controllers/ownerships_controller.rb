class OwnershipsController < ApplicationController

  def create
    @ownership = Ownership.new(owner_id: params[:owner_id], game_id: params[:game_id])

    if @ownership.save
      redirect_to "/users/#{current_user.id}"
    else
      redirect_to "/"
    end
  end

end
