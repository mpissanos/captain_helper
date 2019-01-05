class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :boat_type
      t.integer :capacity
      t.references :user, index: true


      t.timestamps
    end
  end
end
