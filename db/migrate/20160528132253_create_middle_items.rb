class CreateMiddleItems < ActiveRecord::Migration
  def change
    create_table :middle_items do |t|
      t.string :middle_id
      t.string :large_id
      t.string :middle_value

      t.timestamps null: false
    end
  end
end
