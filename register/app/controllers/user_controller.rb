class UserController < ApplicationController

  def find
    @my_user = User.find_by(id: params[:id])
    render "find"
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

    redirect_to "/user/#{@my_user.id}"
  end

  def login
    @my_user = User.find_by(name: "ramiro")
    render "login"
  end

end
