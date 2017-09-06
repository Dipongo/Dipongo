class UniversesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @universes = Universe.all
  end

  def show
    @universe = Universe.find(params[:id])
  end

end
