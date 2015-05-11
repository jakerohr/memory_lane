class AddUserToPagesPartial < ActiveRecord::Migration
  def change
    add_reference :pages_partials, :user, index: true, foreign_key: true
  end
end
