class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/"
    else
      render :new_user
    end
  end

  def show
    @user = User.find_by(id: current_user.id)
    @users_games = @user.games
  end


  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
