class AddThird3ToUserItems < ActiveRecord::Migration
  def change
    add_column :user_items, :third_3_sum, :float
    add_column :user_items, :third_3_flg, :string
  end
end
