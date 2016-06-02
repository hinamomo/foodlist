class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :old_id
      t.string :sex_id
      t.string :activity_level
      t.float :large1
      t.float :large2
      t.float :large3
      t.float :large4
      t.float :large5
      t.float :large6
      t.float :large7
      t.float :large8
      t.float :large9
      t.float :sum

      t.timestamps null: false
    end
  end
end
