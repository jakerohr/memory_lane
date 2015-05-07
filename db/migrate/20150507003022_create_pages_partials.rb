class CreatePagesPartials < ActiveRecord::Migration
  def change
    create_table :pages_partials do |t|
      t.references :page, index: true, foreign_key: true
      t.references :partial, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
