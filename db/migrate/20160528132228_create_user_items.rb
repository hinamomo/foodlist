class CreateUserItems < ActiveRecord::Migration
  def change
    create_table :user_items do |t|
      t.string :user_id
      t.integer :first_1_sum
      t.integer :first_2_sum
      t.integer :second_1_sum
      t.integer :second_2_sum
      t.integer :third_1_sum
      t.integer :third_2_sum
      t.integer :fourth_1_sum
      t.integer :fourth_2_sum
      t.integer :sum_sum
      t.string :first_1_flg
      t.string :first_2_flg
      t.string :second_1_flg
      t.string :second_2_flg
      t.string :third_1_flg
      t.string :third_2_flg
      t.string :fourth_1_flg
      t.string :fourth_2_flg

      t.timestamps null: false
    end
  end
end