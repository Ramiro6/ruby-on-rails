class SiteController < ApplicationController
  def index
    render 'index'
  end

  def result
    @num1 = params[:first].to_f
    @num2 = params[:second].to_f
    @result = @num1 + @num2
    render 'result'
  end
end
