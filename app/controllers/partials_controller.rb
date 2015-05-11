class PartialsController < ApplicationController
  # before_filter :find_model
  def show

  end
  def update
    # partial = Partial.find_by_id(params[:form][:id])
    # partial.update(params[:form][:item]:params[:url])
    p = Partial.update(params[:id],partial_params)
    render json: p
  end



  private
  def partial_params
    params.require(:partial).permit(:path,:name,:item1,:item2,:item3,:item4,:item5,:item6,:item7,:item8,:item9)
  end
end
