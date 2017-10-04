class TipsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:content]
  
  def content
  end
end
