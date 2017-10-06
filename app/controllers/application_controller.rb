class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # before_action :authenticate_user!
  # end
  protect_from_forgery
  before_action :authenticate_user!
  helper_method :current_user

  def current_user
    super || guest_user
  end

  private

  def guest_user
    User.find(session[:guest_user_id].nil? ? session[:guest_user_id] = create_guest_user.id : session[:guest_user_id])
  end

  def create_guest_user
    user = User.new { |user| user.guest = true }
    user.email = "guest_#{Time.now.to_i}#{rand(99)}@example.com"
    user.save(:validate => false)
    sign_in(:user, user)
    user
  end


  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    reset_session
    root_path
  end
end
