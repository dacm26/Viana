class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.decimal :weight
      t.integer :id_employee
      t.integer :origin_customer
      t.integer :destiny_customer
      t.integer :id_itinerary
      t.decimal :price

      t.timestamps
    end
    add_index :packages, :id_employee
    add_index :packages, :origin_customer
    add_index :packages, :id_itinerary
    add_index :packages, :destiny_customer
  end
end
