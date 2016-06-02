class CreateUserItems < ActiveRecord::Migration
  def change
    create_table :user_items do |t|
      t.references :user, index: true, foreign_key: true
      t.float :large1_sum
      t.float :large2_sum
      t.float :large3_sum
      t.float :large4_sum
      t.float :large5_sum
      t.float :large6_sum
      t.float :large7_sum
      t.float :large8_sum
      t.float :large9_sum
      t.float :sum_sum
      t.string :large1_flg
      t.string :large2_flg
      t.string :large3_flg
      t.string :large4_flg
      t.string :large5_flg
      t.string :large6_flg
      t.string :large7_flg
      t.string :large8_flg
      t.string :large9_flg

      t.timestamps null: false
    end
  end
end
