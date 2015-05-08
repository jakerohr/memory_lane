class PagesPartial < ActiveRecord::Base
  belongs_to :page
  belongs_to :partial
end
