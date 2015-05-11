class PartialsController < ApplicationController
  # before_filter :find_model
  def show

  end
  def update
    # partial = Partial.find_by_id(params[:form][:id])
    # partial.update(params[:form][:item]:params[:url])
    Partial.update(params[:id],partial_params)

  end



  # private
  # def find_model
  #   @model = Partials.find(params[:id]) if params[:id]
  # end
end
