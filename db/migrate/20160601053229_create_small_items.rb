class CreateSmallItems < ActiveRecord::Migration
  def change
    create_table :small_items do |t|
      t.references :middle_item, index: true, foreign_key: true
      t.string :small_val
      t.integer :weight
      t.float :point

      t.timestamps null: false
    end
  end
end
