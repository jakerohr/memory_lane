class PagesController < ApplicationController

  def index
  end

  def new
    @page = Page.new
    page = Page.find_by_user_id(1)
    @order = PagesPartial.all.map  do |e|
      if e.page_id = 1
        e
      end
    end
    @order = @order.sort_by { |hsh| hsh[:partial_order]}
    @partials = page.partials
  end

  def create
    user = User.find_by_id(params[:id])
    @page = user.pages.create pages_params
  end

  def update
  end


  private
  def pages_params
    params.require(:page).permit(:name)
  end


end
