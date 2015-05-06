class SessionsController < ApplicationController

  # Login
  def new
  end

  def create
    @user = User.authenticate(params[:user][:email],params[:user][:password])

    if @user
      session[:user_id] = @user.id
      flash[:success] = "Login Successful"
      redirect_to root_path
    else
      flash[:danger] = "Credentials Invalid"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:info] = "Thanks for strolling through Memory Ln. Come back soon."
    redirect_to login_path
  end


end