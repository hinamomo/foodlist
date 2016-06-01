class CreateMiddleItems < ActiveRecord::Migration
  def change
    create_table :middle_items do |t|
      t.references :large_item, index: true, foreign_key: true
      t.string :middle_val

      t.timestamps null: false
    end
  end
end
