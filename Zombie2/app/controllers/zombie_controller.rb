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

  private
  def new_user
    params.require(:user).permit(:name)
  end
end
