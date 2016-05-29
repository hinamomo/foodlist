class CreateUserItems < ActiveRecord::Migration
  def change
    create_table :user_items do |t|
      t.string :user_id
      t.float :first_1_sum
      t.float :first_2_sum
      t.float :second_1_sum
      t.float :second_2_sum
      t.float :third_1_sum
      t.float :third_2_sum
      t.float :fourth_1_sum
      t.float :fourth_2_sum
      t.float :sum_sum
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
