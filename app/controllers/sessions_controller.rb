class SessionsController < ApplicationController
  
  def new
    current_user
  end

  def create
    session[:name] = params[:name]
    redirect_to root_path unless session[:name].empty?
  end

  def destroy
    session.destroy
    redirect_to login_path
  end
end
