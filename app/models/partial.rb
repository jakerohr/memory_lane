class Partial < ActiveRecord::Base
  belongs_to :user
  has_many :pages_partials
  has_many :pages, :through => :pages_partials
end
