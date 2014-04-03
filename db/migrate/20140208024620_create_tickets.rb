class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :info
      t.integer :seat_category
      t.integer :customer_category
      t.integer :origin_city
      t.integer :destiny_city
      t.decimal :price

      t.timestamps
    end
    
    add_index :tickets, :seat_category
    add_index :tickets, :customer_category
    add_index :tickets, :origin_city
    add_index :tickets, :destiny_city
    
  end
end
