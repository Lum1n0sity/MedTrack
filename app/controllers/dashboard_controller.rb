class DashboardController < ApplicationController
  helper_method :current_user
  
  def index
    @current_user = current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
