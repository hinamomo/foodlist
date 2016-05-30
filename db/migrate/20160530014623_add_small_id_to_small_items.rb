class AddSmallIdToSmallItems < ActiveRecord::Migration
  def change
    add_column :small_items, :small_id, :string
  end
end
