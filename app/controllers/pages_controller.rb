class PagesController < ApplicationController

  def index
    @pages = current_user.pages
  end

  def show
    page = Page.find_by_id(params[:id])
    @current_background = page.background
    @partials = page.pages_partials.order(partial_order: 'asc')
    # render :json => params
  end

  def edit
    @backgrounds = Background.all
    @page = Page.find_by_id(params[:id])
    @current_background = @page.background
    @add_partial = User.find_by_id(1).partials
    @partials = @page.pages_partials.order(partial_order: 'asc')
    @partial = Partial.new
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
    last_page = current_user.pages.where.not({page_id:nil}).order(page_id: :asc).last
    page_number = last_page.nil? ? 0 : last_page.page_id + 1
    @page = Page.create(name: params[:page][:name], page_id: page_number )
    current_user.pages << @page
    @background = Background.first
    @background.pages << @page
    # # Copies template page to the current_users page.
    template_page = User.find_by_id(1).pages.find_by_page_id(0)
    copy_pages_partials = template_page.pages_partials.order(partial_order: :asc)


    copy_pages_partials.each do |pages_partial|
      copy = pages_partial.partial
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
      @page.partials << p
      pp = p.pages_partials.last #PagesPartial.last
      pp.partial_order = pages_partial.partial_order
      pp.save
    end

    redirect_to edit_page_path(@page)
  end

  def update

    p params
    if params[:partial]
      partials_array = params[:partial]

      partials_array.each_with_index do |item,index|
        PagesPartial.find_by_partial_id(item).update(partial_order: index)
      end

      render json: partials_array
    else
      @background = Background.find_by_id(pages_params[:background_id])
      @page = Page.find_by_id(params[:id])
      @background.pages << @page
      redirect_to edit_page_path(@page)
    end
    end

  private
  def pages_params
    params.require(:page).permit(:name,:background_id)
  end


end
