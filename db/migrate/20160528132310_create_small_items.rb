class CreateSmallItems < ActiveRecord::Migration
  def change
    create_table :small_items do |t|
      t.string :large_id
      t.string :middle_id
      t.string :small_val
      t.integer :weight
      t.float :point

      t.timestamps null: false
    end
  end
end
