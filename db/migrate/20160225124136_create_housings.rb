class CreateHousings < ActiveRecord::Migration
  def change
    create_table :housings do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :housings, [:user_id, :created_at]
  end
end
