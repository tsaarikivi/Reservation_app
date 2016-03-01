class ReservationSlot < ActiveRecord::Base
  belongs_to :reservation_target
  validates :day, presence: true
  validates :startTime, presence: true
  validates :endTime, presence: true
end
