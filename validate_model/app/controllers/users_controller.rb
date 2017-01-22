class UsersController < ApplicationController

  def show
    @my_user = User.find_by(id: params[:id])
    render "show"
  end

  def new
    @my_user = User.new
    render "new"
  end

  def create
    @my_user = User.new(
    :name => params[:user][:name],
    :pass => params[:user][:pass]
    )

    @my_user.save

    redirect_to "/users/#{@my_user.id}"
  end

end
