class CreatePartials < ActiveRecord::Migration
  def change
    create_table :partials do |t|
      t.references :user, index: true, foreign_key: true
      t.string :path
      t.string :name
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :item4
      t.string :item5
      t.string :item6
      t.string :item7
      t.string :item8
      t.string :item9

      t.timestamps null: false
    end
  end
end
