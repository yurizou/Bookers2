class UsersController < ApplicationController
  def edit
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(user.id)
  end

  def index
  end

  def show
    @user = User.find(params[:id])
  end
  
  
end
