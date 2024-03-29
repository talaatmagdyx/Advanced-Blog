class ApplicationController < ActionController::Base

	  # For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

	add_flash_types :success, :warning, :danger, :info

	#sessions

	helper_method :current_user, :logged_in?
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    unless logged_in?
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to root_path
    end
  end

end
