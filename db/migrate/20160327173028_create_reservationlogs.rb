class CreateReservationlogs < ActiveRecord::Migration
  def change
    create_table :reservationlogs do |t|
      t.string :logstr
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :reservationlogs, [:owner_id, :created_at]
  end
end
