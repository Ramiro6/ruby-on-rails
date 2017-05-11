class ZombieController < ApplicationController
  
  def index
    @zombie = Person.all
  end
end
