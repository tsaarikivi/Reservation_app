class CreateReservationTokens < ActiveRecord::Migration
  def change
    create_table :reservation_tokens do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
