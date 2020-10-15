class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper
  
  def current_user
      session[:user_id] ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
      !current_user.nil? 
  end
end
