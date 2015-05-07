class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :page_id
      t.references :user, index: true, foreign_key: true
      t.integer :partial_order

      t.timestamps null: false
    end
  end
end
