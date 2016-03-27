class Owner < ActiveRecord::Base
  belongs_to :admin
  has_many :reservation_targets, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :reservationlogs, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  validates :admin_id, presence: true
  validates :name, presence: true, length: { maximum: 100 }
end
