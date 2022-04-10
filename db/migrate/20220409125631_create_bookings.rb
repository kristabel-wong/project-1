class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.text :title
      t.integer :user_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
