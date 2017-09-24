class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    session[:user_id] = user.id
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "You are logged in: Enjoy writing #{user.username}"
      redirect_to user_path(user)
    else
      flash.now[:danger]="something went wrong please try again"
      render 'new'
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:success]="you are successfully logout"
    redirect_to root_path
  end
  
end