class User < ActiveRecord::Base
  before_save { self.email = self.email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  
  has_many :user_foods
  
  def food_items
    UserFood.where(user_id: self.id)
  end
  
  def user_items
    UserItem.where(user_id: self.id)
  end
  
  def standard
    Activity.where(old_id: self.old_id, sex_id: self.sex_id, activity_level: self.activity_level)
  end
end
