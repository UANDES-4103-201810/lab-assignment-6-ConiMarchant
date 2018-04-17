class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :is_user_logged_in?, :current_user

  def index

  end

  def current_user
    @current_user ||= User.find_by(id: cookies.signed[:user_id])
	#complete this method
  end

  def is_user_logged_in?
    current_user.present?
	#complete this method
  	logged_in = false
	if logged_in 
		then true 
	else 
		redirect_to root_path 
	end 
  end
end
