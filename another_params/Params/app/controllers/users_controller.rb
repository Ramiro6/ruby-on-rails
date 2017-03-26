class UsersController < ApplicationController

  def index
    @name = params[:name]
  end
end
