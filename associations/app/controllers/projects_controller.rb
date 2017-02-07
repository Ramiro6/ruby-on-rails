class ProjectsController < ApplicationController
  def show
    @my_user = User.find_by(id: params[:id])
  end

  def index
    @my_user = User.find_by(id: params[:user_id])
    @my_project = @my_user.descriptions
  end

  def new
    @my_user = User.find_by(id: params[:user_id])
    @my_project = @my_user.descriptions.new
  end

  def create
    @my_user = User.find_by(id: params[:user_id])
    @my_project = @my_user.descriptions.new(user_project)

    if @my_project.save
      flash[:notice] = "Entry is save"
      redirect_to "/projects/#{@my_user.id}/index"
    else
      render "new"
    end
  end

  def edit
    @my_user = User.find(params[:user_id])
    @my_project = @my_user.descriptions.find(params[:id])
  end

  def destroy
    @my_user = User.find_by(id: params[:user_id])
    @my_project = @my_user.descriptions.find_by(id: params[:id])
    @my_project.destroy
    flash[:alert] = "Entry destroyed"
    redirect_to "/projects/#{@my_user.id}/index"
  end

  def update
    @my_user = User.find_by(id: params[:user_id])
    @my_project = @my_user.descriptions.find_by(id: params[:id])

    if @my_project.update(user_project)
      redirect_to "/projects/#{@my_user.id}/index"

    else
      render "edit"
    end
  end



  private
  def user_project
    params.require(:description).permit(:email, :description)
  end
end
