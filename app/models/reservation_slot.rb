class ReservationSlot < ActiveRecord::Base
  belongs_to :reservation_target
end
