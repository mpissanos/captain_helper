class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.datetime  :trip_time
      t.string :destination
      t.integer :duration
      t.float :price
      t.integer :number_of_passengers
      t.integer :number_of_personnel
      t.integer :boat_id
      t.integer :client_id
      t.integer :user_id

      t.timestamps
    end
  end
end
