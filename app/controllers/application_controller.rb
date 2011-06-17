class ApplicationController < ActionController::Base
  protect_from_forgery
  USERS = { "hotel-admin" => "super-secret" }
  
  private
  
  def authenticate
    USERS[username]
    
    flash[:error] = 'Invalid login'
    redirect_to :login
  end
end
