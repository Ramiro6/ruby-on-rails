class ZombiesController < ApplicationController

  def index
    @zombie_all = Person.all
    @zombie = Person.new
    @jj = Person.last.name

    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end

  def create
    if @zombie = Person.new(new_zombie)
      respond_to do |format|
        format.js
        format.html
      end
    @zombie.save

    end
  end

  def destroy
    @zombie = Person.find(params[:person_id])
    @zombie.destroy

    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end

  private
  def new_zombie
    params.require(:person).permit(:name)
  end
end
