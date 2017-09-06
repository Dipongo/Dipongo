class UniversesController < ApplicationController
  skip_before_action :authentificat_user!, only: [:index, :show]

  def index
    @universes = Universes.all
  end

  def show
    @universe = Universe.find(params[:id])
  end

end
