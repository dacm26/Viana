class CreateTicketbills < ActiveRecord::Migration
  def change
    create_table :ticketbills do |t|
      t.integer :id_ticket
      t.string :id_customer
      t.integer :itinerary_id
      t.date :departure_date

      t.timestamps
    end
    add_index :ticketbills, :id_ticket
    add_index :ticketbills, :id_customer
    add_index :ticketbills, :itinerary_id
  end
end
