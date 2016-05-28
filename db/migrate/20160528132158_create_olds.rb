class CreateOlds < ActiveRecord::Migration
  def change
    create_table :olds do |t|
      t.string :old_id
      t.string :old_val

      t.timestamps null: false
    end
  end
end
