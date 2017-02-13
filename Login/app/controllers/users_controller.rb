class UsersController < ApplicationController
  def home
    @name = current_user ? @current_user.name : "No user login"
  end

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(new_path)
    if @user.save
      flash[:notice] = "your User is create"
      redirect_to "/"
    else
      redirect_to "/new"
    end
  end

  private
  def new_path
    params.require(:user).permit(:name, :email, :password)
  end
end
