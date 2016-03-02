class AddTimeWindowInDaysToReservationTarget < ActiveRecord::Migration
  def change
    add_column :reservation_targets, :timeWindowInDays, :integer
  end
end
