class AddPaidTicketbill < ActiveRecord::Migration
  def change
    add_column :ticketbills, :paid, :boolean, default: false
  end
end
