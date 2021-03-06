class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user, :pages_menu

  def is_authenticated?
    unless current_user
      flash[:info] = "Oops. You need to log in to do that."
      redirect_to login_path
    end
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
    gon.current_user = @current_user
  end

  def pages_menu
    if current_user
      @pages_menu = current_user.pages
    end
  end

end
