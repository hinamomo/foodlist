class UserFood < ActiveRecord::Base
  belongs_to :user
  validates :small_id, presence: true
  validates :weight, presence: true, numericality: { only_integer: true } # 数値のみ有効

end
