class SessionsController < ApplicationController
  before_action :require_login
  
  #note - looked at solution for part of this 
  #felt more productive to see how to actually do this
  #than bashing against failing tests for hours - hhoping lecture will clarify some of it
  # will go back and redo these after if it feels like this is the only practice I'll get

  def new
  end
  
  #this is all wrong! pretty confused about hwo to implement this 
  def login
  end
  
  def secret
  end

  def current_user
    session[:user] ||= []
  end
  
  private

  def require_login
    return head(:forbidden) unless session.include? :username
  end
end
