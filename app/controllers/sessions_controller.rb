class SessionsController < ApplicationController
  def new
  end

  def create
    if Hotel.first.admin_password == params[:password]
      session[:logged_in] = true
      redirect_to '/'
    else
      flash[:error] = 'Invalid login'
      render :template => 'new'
    end
  end

  def destroy
    session[:logged_in] = false
    flash[:notice] = 'Logged out'
    redirect_to '/'
  end
  
  def reminder
    if ReminderMailer.password_email.deliver
      flash[:notice] = 'Sent email reminder'
    else
      flash[:error] = 'Error sending email reminder'
    end
    
    redirect_to :back
  end
end
