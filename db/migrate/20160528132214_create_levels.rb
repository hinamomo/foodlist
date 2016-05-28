class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :activity_level
      t.string :activity_val

      t.timestamps null: false
    end
  end
end
