class AddSlotStatusToReservationSlots < ActiveRecord::Migration
  def change
    add_column :reservation_slots, :slotStatus, :integer
  end
end
