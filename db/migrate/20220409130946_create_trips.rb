class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.text :title
      t.text :image
      t.date :date
      t.time :time
      t.integer :seat
      t.integer :price
      t.text :car_make
      t.text :car_model
      t.text :description

      t.timestamps
    end
  end
end
