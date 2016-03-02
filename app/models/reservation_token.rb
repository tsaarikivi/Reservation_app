class ReservationToken < ActiveRecord::Base
  belongs_to :user
  belongs_to :reservation_slot
  has_one :reservation_target
  validates :reservation_target_id, presence: true
  validates :user_id, presence: true
end
