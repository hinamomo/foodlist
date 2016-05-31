class SmallItem < ActiveRecord::Base
  belongs_to :large
  belongs_to :middle
end
