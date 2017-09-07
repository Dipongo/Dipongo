class SolutionsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :new]

  before_action :set_story, only: [:index, :create]

  def index
  end

  def new
    @solution = Solution.new
  end

  def create
    @solution = current_or_guest_user.solutions.new(solution_params)
    @solution.story = set_story
    @solution.save
  end

  private

    def set_story
      Story.find(params[:story_id])
    end

    def solution_params
      params.require(:solution).permit(:pictures)
    end

end
