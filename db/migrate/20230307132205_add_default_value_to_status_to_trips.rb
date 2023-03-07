class AddDefaultValueToStatusToTrips < ActiveRecord::Migration[7.0]
  def change
    change_column :trips, :status, :integer, :default => 0
  end
end
