class ZombiesController < ApplicationController

  def index
    @zombie_all = Person.all
    @zombie = Person.new
  end

  def create
    @zombie = Person.new(new_zombie)
    @zombie.save
  end

  private
  def new_zombie
    params.require(:person).permit(:name)
  end
end
