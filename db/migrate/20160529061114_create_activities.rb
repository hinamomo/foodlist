class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :old_id
      t.string :sex_id
      t.string :activity_level
      t.float :first_1
      t.float :first_2
      t.float :second_1
      t.float :second_2
      t.float :third_1
      t.float :third_2
      t.float :fourth_1
      t.float :fourth_2
      t.string :float

      t.timestamps null: false
    end
  end
end
