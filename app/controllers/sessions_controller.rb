class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find
  end

  private

  def user_params
    user = User.find(username: params[:usersname])
    if user && user.authenticate_password(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged in as #{current_user.email}."
      redirect_to user_dashboard_index_path(current_user)
    else
      flash[:alert] = "Password or username was incorrect"
      render :new
    end 
  end

end
