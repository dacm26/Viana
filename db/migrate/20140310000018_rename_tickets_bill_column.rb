class RenameTicketsBillColumn < ActiveRecord::Migration
  def change
    rename_column :ticketbills, :id_ticket, :ticket_id
  end
end
