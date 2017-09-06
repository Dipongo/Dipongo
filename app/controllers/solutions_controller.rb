class SolutionsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :new]

  before_action :set_story, only: [:index, :create]

  def index
    @story = Solution.set_story
  end

  def new
    @solution = Solution.new
  end

  def create
    @solution = current_user.solutions.build(solution_params)
    @solution.set_story
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
