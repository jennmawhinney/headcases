class SessionController < ApplicationController

  def new
      user = @current_user
      if user.present?
      redirect_to users_account_path
    else
      return
    end
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to welcome_path
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
