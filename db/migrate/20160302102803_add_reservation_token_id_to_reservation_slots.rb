class AddReservationTokenIdToReservationSlots < ActiveRecord::Migration
  def change
    add_column :reservation_slots, :reservation_token_id, :integer
    add_index :reservation_slots, :reservation_token_id
  end
end
