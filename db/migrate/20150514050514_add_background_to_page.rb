class AddBackgroundToPage < ActiveRecord::Migration
  def change
    add_reference :pages, :background, index: true, foreign_key: true
  end
end
