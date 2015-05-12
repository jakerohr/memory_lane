class PartialsController < ApplicationController
  # before_filter :find_model
  def show

  end
  def update
    # partial = Partial.find_by_id(params[:form][:id])
    # partial.update(params[:form][:item]:params[:url])
    item = -1
    (1..9).each do |i|
      item = i if params[:partial].key?("item#{i}".to_sym)
    end

    p = Partial.update(params[:id],partial_params)

    render json: {partial: p, item:item}
  end

  def edit_item
    @p = Partial.find_by_id params[:partial_id]
    @item = params[:id]
    render layout: false
  end

  def destroy
    p = Partial.find_by_id(params[:id])
    pages_partial = p.pages_partials.find_by_partial_id(params[:id])

    if pages_partial
      PagesPartial.delete(pages_partial)
    end

    p.delete
    render json: p
  end

  private
  def partial_params
    params.require(:partial).permit(:path,:name,:item1,:item2,:item3,:item4,:item5,:item6,:item7,:item8,:item9)
  end
end
