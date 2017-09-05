class StoriesController < ApplicationController
  skip_before_action :authentificat_user!, only: [:show]

  def show
    @story = Story.find(params[:id])

  end

end
