class SolutionsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:new, :create, :index]

  before_action :set_story, only: [:index, :new, :create]

  def index
    @solution = current_user.solutions.where(story: @story).order(created_at: :desc).first
    @user = current_user
  end

  def new
    @solution = Solution.new
  end

  def create
    # update user infos from solution_params[:users]
    solution = params[:solution]
    users = solution[:users]
    @user = current_user.update(name: users[:name], age: users[:age])
    @solution = current_user.solutions.new(solution_params)
    @solution.story = @story
    @solution.save
    # redirect_to story_solutions_path(@story)
    if current_user.guest
      redirect_to sign_up_path
      session[:story_id] = @story.id
    else
      redirect_to story_solutions_path(@story)
    end

  end

private

  def set_story
    @story = Story.find(params[:story_id])
  end

  def solution_params
    params.require(:solution).permit(:photo, user_attributes: [:name, :age])
  end

end
