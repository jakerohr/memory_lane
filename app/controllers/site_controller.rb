  class SiteController < ApplicationController

  before_filter :find_model

  def index

    page = Page.find_by_user_id(1)
    @partials = page.pages_partials.order(partial_order: 'asc')

    # render :json => @partials
  end

  def show

  end

  private
  def find_model
    @model = Site.find(params[:id]) if params[:id]
  end
end
