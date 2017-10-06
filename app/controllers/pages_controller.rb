class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :guest_sign_up, :create_sign_up]

  def home
  end

  def guest_sign_up
  end

  def create_sign_up
    current_user.update(user_params)
    current_user.guest = false
    current_user.save
    sign_in(:user, current_user)
    redirect_to story_solutions_path(session[:story_id])
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
