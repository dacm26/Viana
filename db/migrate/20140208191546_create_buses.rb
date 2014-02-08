class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :name
      t.integer :capacity
      t.integer :origin_city
      t.integer :destiny_city

      t.timestamps
    end
    add_index :buses,:origin_city
    add_index :buses,:destiny_city
  end
end
