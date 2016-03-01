class CreateReservationSlots < ActiveRecord::Migration
  def change
    create_table :reservation_slots do |t|
      t.integer :day
      t.integer :startTime
      t.integer :endTime
      t.references :reservation_target, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
