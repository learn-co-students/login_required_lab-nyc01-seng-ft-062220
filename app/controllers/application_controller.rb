class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #taken from solution - just want to get it wokring and mess around with it and then come back later
  def homepage
    redirect_to new_session_path unless session[:name]
  end

  def current_user
    session[:name]
  end

  private

  def require_logged_in
    redirect_to new_session_path unless current_user
  end

end
