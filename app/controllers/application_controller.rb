class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def authenticate
    unless session[:logged_in]
      redirect_to '/sessions/new'
    end
  end
end
