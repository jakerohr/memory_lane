def new
    @page = Page.new
    # Creates new page in the DB
    # and associates it to the current user
    # with page_id = 1 + number of pages
    # current_user has (ie. if they have 0 it will be 1)
    user = User.find_by_id(current_user)
    page_number = (current_user.pages.length + 1)
    @page.page_id = page_number
    @page.name = "Untitled Page"
    @page.save
    user.pages << @page

    # Copies template page to the current_users
    # page.
    template_page = Page.find_by_user_id(1)
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
      User.find_by_user_id(current_user).pages.find_by_page_id().partials.each do |partial|
      pp = PagesPartial.last
      pp.partial_order = order_number
      pp.save
      # PagesPartial.find_by_id(pp_id).user_id = current_user
      # PagesPartial.find_by_id(pp_id).partial_order = order_number
      # PagesPartial.find_by_id(pp_id).save
      order_number += 1
    end