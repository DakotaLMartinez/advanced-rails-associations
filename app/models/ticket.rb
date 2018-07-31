class Ticket < ApplicationRecord
  belongs_to :unit
  has_many :assigned_tickets
  has_many :assigned_employees, through: :assigned_tickets, source: 'employee'
end
