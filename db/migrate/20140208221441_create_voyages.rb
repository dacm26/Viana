class CreateVoyages < ActiveRecord::Migration
  def change
    create_table :voyages do |t|
      t.date :v_date
      t.integer :id_itinerary
      t.integer :seats

      t.timestamps
    end
    add_index :voyages, :id_itinerary
  end
end
