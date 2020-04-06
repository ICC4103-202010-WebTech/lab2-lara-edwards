class AddTicketTypeIdToTicketOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :ticket_orders, :ticket_type, null: true, foreign_key: true
  end
end
