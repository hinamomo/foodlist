class AddSumToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :sum, :float
  end
end
