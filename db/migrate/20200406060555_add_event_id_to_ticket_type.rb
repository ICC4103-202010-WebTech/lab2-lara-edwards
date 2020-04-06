class AddEventIdToTicketType < ActiveRecord::Migration[6.0]
  def change
    add_reference :ticket_types, :event, null: true, foreign_key: true
  end
end
