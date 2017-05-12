class ZombieController < ApplicationController

  def index
    @zombie = Person.all
    @pp = Person.all
    @jj = Person.first

    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end
end
