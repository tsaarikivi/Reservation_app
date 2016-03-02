class ReservationSlot < ActiveRecord::Base
  belongs_to :reservation_target
  has_one :reservation_token
  validates :day, presence: true
  validates :startTime, presence: true
  validates :endTime, presence: true
end
