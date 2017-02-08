class ProjectsController < ApplicationController
  def index
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "your email is save"
      WelcomeMailer.welcom_mailer(@user).deliver_now
      redirect_to "/projects/#{@user.id}/index"

    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email)
  end
end
