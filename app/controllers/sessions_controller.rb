class SessionsController < ApplicationController

  def new
    render layout: 'home'
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      if request.referrer == "http://localhost:3000/login"
        redirect_to @user
      else
        redirect_to request.referrer
      end
    else
      flash[:errors] = ["Cannot find user or verify password"]
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to home_path
  end
end
