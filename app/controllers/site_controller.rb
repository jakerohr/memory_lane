class SiteController < ApplicationController

  before_filter :find_model

  def index

  end


  private
  def find_model
    @model = Site.find(params[:id]) if params[:id]
  end
end
