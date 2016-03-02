class AddReservationTargetIdToReservationTokens < ActiveRecord::Migration
  def change
    add_column :reservation_tokens, :reservation_target_id, :integer
    add_index :reservation_tokens, :reservation_target_id
  end
end
