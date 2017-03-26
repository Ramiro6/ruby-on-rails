class UsersController < ApplicationController
   skip_before_filter :verify_authenticity_token, only: [:index]

  def index
    @name = params[:name]
    @last = params[:last]
  end


end
