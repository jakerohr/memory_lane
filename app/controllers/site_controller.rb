class SiteController < ApplicationController

  before_filter :find_model

  def index
    page = Page.find_by_user_id(1)
    @order = PagesPartial.all.map  do |e|
      if e.page_id = 1
        e
      end
    end
    @order = @order.sort_by { |hsh| hsh[:partial_order]}
    @partials = page.partials
    # render :json => @order
  end

  def show

  end

  private
  def find_model
    @model = Site.find(params[:id]) if params[:id]
  end
end
