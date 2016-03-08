class AddUseDayToReservationTokens < ActiveRecord::Migration
  def change
    add_column :reservation_tokens, :useDay, :dateTime
  end
end
