class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.datetime  :trip_time
      t.string :destination
      t.integer :duration
      t.float :price
      t.integer :number_of_passengers
      t.integer :number_of_personnel
      t.references :boat, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
