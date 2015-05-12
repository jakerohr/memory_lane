class PagesController < ApplicationController

  def index
  end

  def edit
    page = Page.find_by_id(params[:id])
    @partials = page.pages_partials.order(partial_order: 'asc')
  end

  # def create
  #   user = User.find_by_id(params[:id])
  #   @page = user.pages.create pages_params
  # end
  def new
    @page = Page.new
  end

  def create
    # Creates new page in the DB
    # and associates it to the current user
    # with page_id = 1 + number of pages
    # current_user has (ie. if they have 0 it will be 1)
    user = User.find_by_id(current_user)
    page_number = (current_user.pages.length + 1)
    @page = Page.create(name: params[:page][:name], page_id: page_number )
    user.pages << @page

    # render :json => params[:page][:name]
    # # Copies template page to the current_users
    # # page.
    template_page = User.find_by_id(1).pages.find_by_page_id(0)
    copy_partials = template_page.partials

    order_number = 0

    copy_partials.each do |copy|
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
      user.partials << p
      @page.partials << p
      pp = PagesPartial.last
      pp.partial_order = order_number
      pp.save
      order_number += 1
    end

    redirect_to edit_page_path(@page)
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
