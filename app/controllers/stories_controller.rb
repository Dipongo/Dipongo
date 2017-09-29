class StoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @story = Story.find(params[:id])
    @universe = @story.universe

    if params[:page]
      @page = @story.pages.find_by_position(params[:page])
    else
      @page = @story.pages.first
    end
    raise ActiveRecord::RecordNotFound unless @page
    @prev_page = @page.higher_item
    @next_page = @page.lower_item
  end

end
