class AddTokenTypeToReservationTokens < ActiveRecord::Migration
  def change
    add_column :reservation_tokens, :tokenType, :integer
  end
end
