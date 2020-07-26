class SessionsController < ApplicationController
  before_action :require_login
  
  #note - looked at solution for part of this 
  #felt more productive to see how to actually do this
  #than weaving through failing tests not understanidn the overall concepts - hoping lecture will clarify some of it
  # will go back and redo these after if it feels like this is the only practice I'll get

  def new
  end
  
  # def login
  # end
  
  def create 
    if params[:name] == nil || params[:name] == ""
    redirect_to new_session_path
    else
    session[:name] = params[:name]
    redirect_to homepage_path
    end
  end

  # def secret
  # end

  def destroy
    session.delete :name
    redirect_to controller: homepage_path
  end
  
  def current_user
    session[:user] ||= []
  end
  
  private

  def require_login
    return head(:forbidden) unless session.include? :username
  end
end
