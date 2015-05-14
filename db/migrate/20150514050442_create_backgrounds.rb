class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.string :bg_class
      t.string :bg_name

      t.timestamps null: false
    end
  end
end
