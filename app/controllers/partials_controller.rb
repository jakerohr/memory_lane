class PartialsController < ApplicationController
  # before_filter :find_model
  def show
  end

  def create

    copy = Partial.find_by_id(partial_params[:partial_id])
    page = Page.find_by_id(partial_params[:page_id])
    p = Partial.new
    p.path = copy.path
    p.name = copy.name
    p.item1 = copy.item1
    p.item2 = copy.item2
    p.item3 = copy.item3
    p.item4 = copy.item4
    p.item5 = copy.item5
    p.item6 = copy.item6
    p.item7 = copy.item7
    p.item8 = copy.item8
    p.item9 = copy.item9
    p.save
    current_user.partials << p
    page.partials << p
    pp = p.pages_partials.last
    order_arr = page.pages_partials.where.not(:partial_order => nil)
    order_number = order_arr.order(partial_order: :asc).last.partial_order
    pp.partial_order = order_number + 1
    pp.save
    render partial: "partials/#{p.path}", locals: {p:p}
    # redirect_to edit_page_path(page)
    # render :json => p
    # render :json => params
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
    params.require(:partial).permit(:path,:name,:item1,:item2,:item3,:item4,:item5,:item6,:item7,:item8,:item9,:page_id,:partial_id)
  end



end
