class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def welcome
    current_user if self.logged_in?
  end

  def authorized
    redirect_to login_path unless self.logged_in?
  end

  def logged_in?
    !!current_user || current_user.empty?
  end

  private

  def current_user
    @_current_user ||= session[:name]
  end
end
