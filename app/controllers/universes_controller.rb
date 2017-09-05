class UniversesController < ApplicationController

  def index
    @universes = Universes.all
  end

  def show
   @universe = Universe.stories
  end

  def new
    @universe = Universe.new
  end

  def create
    @universe = Universe.new(universe_params)
    @universe.save
  end

  private

  def universe_params
    params.require(:universe).permit(:name)
  end
end
