class CreateMiddleItems < ActiveRecord::Migration
  def change
    create_table :middle_items do |t|
      t.references :large, index: true, foreign_key: true
      t.string :middle_id
      t.string :middle_val

      t.timestamps null: false
      t.index [:large_id, :created_at]
    end
  end
end
