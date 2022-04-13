class AddOriginToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :origin, :text
  end
end
