class MiddleItem < ActiveRecord::Base
  belongs_to :large_item
  has_many :small_items
end
