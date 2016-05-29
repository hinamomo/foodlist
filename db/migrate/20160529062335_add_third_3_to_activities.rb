class AddThird3ToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :third_3, :float
  end
end
