class UsersController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    flash[:notice] = "You have updated user successfully."
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      # @users = User.all
      # @user = current_user_id
      render :edit
    end
  end



  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @newbook = Book.new
    @books = @user.books
    @book = Book.new
  end

  private

  def user_params
    params.require(:user).permit(:profile_image, :name, :introduction)
  end

   def is_matching_login_user
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to user_path(current_user)
    end
   end

end
