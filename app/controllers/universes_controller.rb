class UniversesController < ApplicationController

  def index
    @universes = Universes.all
  end

  def show
   @universe = Universe.stories
  end
end
