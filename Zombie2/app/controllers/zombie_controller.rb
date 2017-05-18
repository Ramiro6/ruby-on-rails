class ZombieController < ApplicationController

  def index
    @zombie = User.all
  end

  def new
    if @zombie = User.new(new_user)
      respond_to do  |format|
        format.html
        format.js
      end
    end
    @zombie.save
  end

  def destroy
    @zombie = User.find(params[:user_id])
    if @zombie
        respond_to do  |format|
          format.html
          format.js
        end
      @zombie.destroy.to_s
    end
  end

  private
  def new_user
    params.require(:user).permit(:name)
  end
end
