class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
