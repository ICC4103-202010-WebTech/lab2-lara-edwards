class AddCostumerIdToTicketOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :ticket_orders, :costumer, null: true, foreign_key: true
  end
end
