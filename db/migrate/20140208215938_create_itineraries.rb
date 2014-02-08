class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :info
      t.time :departure_time
      t.time :arrival_time
      t.integer :id_bus

      t.timestamps
    end
    add_index :itineraries, :id_bus
  end
end
