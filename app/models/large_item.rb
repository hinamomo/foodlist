class LargeItem < ActiveRecord::Base
  has_many :middle_items, ->{order(:middle_id)}
end
