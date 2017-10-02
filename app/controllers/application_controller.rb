class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def check_admin
    current_user ? current_user.admin : false
  end
      
  def authorize
    redirect_to '/login' unless current_user
  end
end
