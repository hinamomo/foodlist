class CreateUserFoods < ActiveRecord::Migration
  def change
    create_table :user_foods do |t|
      t.references :user, index: true, foreign_key: true
      t.string :large_id
      t.string :middle_id
      t.string :small_val
      t.integer :weight

      t.timestamps null: false
    end
  end
end
