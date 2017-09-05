class SolutionsController < ApplicationController

  def index
    @solutions = Solution.all
  end

  def new
    @solution = Solution.new
    # @user = User.find(params[:id])
    # @story = Story.find(params[:id])
  end

  def create
    @solution = current_user.solutions.new(params[:solution])
    @solution.save
  end

end
