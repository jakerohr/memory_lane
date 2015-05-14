class Page < ActiveRecord::Base
  belongs_to :user
  has_many :pages_partials
  has_many :partials, :through => :pages_partials
  belongs_to :background
end
