class Small < ActiveRecord::Migration
  def change
    drop_table :small_items
  end
end
