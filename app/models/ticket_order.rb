class TicketOrder < ApplicationRecord
  has_many :ticket_type
  belongs_to :costumer
end
