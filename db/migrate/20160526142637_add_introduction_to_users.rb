class AddIntroductionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :old_id, :string
    add_column :users, :sex_id, :string
    add_column :users, :activity_level, :string
  end
end
