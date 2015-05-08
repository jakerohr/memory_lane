class PagesController < ApplicationController

  def index
  end

  def new
    @page = Page.new
  end

  def create
    user = User.find_by_id(params[:id])
    @page = user.pages.create pages_params
  end

  private
  def pages_params
    params.require(:page).permit(:name)
  end


end
