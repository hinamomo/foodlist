class CreateLargeItems < ActiveRecord::Migration
  def change
    create_table :large_items do |t|
      t.string :large_val

      t.timestamps null: false
    end
  end
end
