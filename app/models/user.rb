class User < ActiveRecord::Base
  before_save { self.name = name.downcase }
  belongs_to :owner
  validates :name, presence: true,
                   length: { maximum: 128 },
                   uniqueness: { case_sensitive: false }
end
