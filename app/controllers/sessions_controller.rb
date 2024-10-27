class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    Rails.logger.debug "User found: #{user.inspect}"
    Rails.logger.debug "Password entered: #{params[:password]}"
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      flash[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
