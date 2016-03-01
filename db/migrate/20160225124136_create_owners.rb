class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.references :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :owners, [:admin_id, :created_at]
  end
end
