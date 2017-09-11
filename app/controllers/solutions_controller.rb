class SolutionsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :new, :create]

  before_action :set_story, only: [:index, :new, :create]

  def index
    @solution = current_user.solutions.where(story: @story).order(created_at: :desc).first
  end

  def new
    @solution = Solution.new
  end

  def create
    @solution = current_user.solutions.new(solution_params)
    @solution.story = @story
    @solution.save
    redirect_to story_solutions_path(@story)
  end

private

  def set_story
    @story = Story.find(params[:story_id])
  end

  def solution_params
    params.require(:solution).permit(:photo)
  end

end
