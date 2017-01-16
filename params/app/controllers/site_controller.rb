class SiteController < ApplicationController

  def say_name
    @name = params[:name]
    render 'say_name'
  end
end
