class CreateSmallItems < ActiveRecord::Migration
  def change
    create_table :small_items do |t|
      t.references :large, index: true, foreign_key: true
      t.references :middle, index: true, foreign_key: true
      t.string :small_id
      t.string :small_val
      t.integer :weight
      t.integer :point

      t.timestamps null: false
    end
  end
end
