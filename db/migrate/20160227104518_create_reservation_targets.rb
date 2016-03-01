class CreateReservationTargets < ActiveRecord::Migration
  def change
    create_table :reservation_targets do |t|
      t.string :name
      t.integer :category
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :reservation_targets, [:owner_id, :created_at]
  end
end
