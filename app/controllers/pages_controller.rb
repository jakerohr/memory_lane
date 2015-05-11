class PagesController < ApplicationController

  def index
  end

  def edit
    @page = Page.new
    page = Page.find_by_user_id(1)
    @partials = page.pages_partials.order(partial_order: 'asc')
    #.sort_by{|p| p.partial_order}
  end

  def create
    user = User.find_by_id(params[:id])
    @page = user.pages.create pages_params
  end

  def update
    partials_array = params[:partial]

    partials_array.each_with_index do |item,index|
      PagesPartial.find_by_partial_id(item).update(partial_order: index)
    end
    render json: partials_array
  end

  private
  def pages_params
    params.require(:page).permit(:name)
  end


end
