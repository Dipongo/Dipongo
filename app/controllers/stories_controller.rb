class StoriesController < ApplicationController
  def show
    @story = Story.pages
  end
end
