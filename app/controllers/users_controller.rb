class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    p params
    puts '*' * 10
    if @user.save
      puts "if" * 10
      redirect_to "/"
    else
      puts "else" * 10
      render :new_user
    end
  end


  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
