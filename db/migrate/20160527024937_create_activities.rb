class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :old_id
      t.string :sex_id
      t.string :activity_level
      t.integer :first_1
      t.integer :first_2
      t.integer :second_1
      t.integer :second_2
      t.integer :third_1
      t.integer :third_2
      t.integer :fourth_1
      t.integer :fourth_2
      t.integer :sum

      t.timestamps null: false
    end
  end
end
