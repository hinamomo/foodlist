class RemoveFloatToActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :float, :string
  end
end
