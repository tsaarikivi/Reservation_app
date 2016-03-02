class User < ActiveRecord::Base
  before_save { self.name = name.downcase }
  belongs_to :owner
  has_many :reservation_tokens
  validates :name, presence: true,
                   length: { maximum: 128 },
                   uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :owner_id, presence: true
end
