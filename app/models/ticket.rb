class Ticket < ApplicationRecord
  belongs_to :unit
  has_many :assigned_tickets
  has_many :employees, through: :assigned_tickets
end
