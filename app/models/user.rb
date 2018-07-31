class User < ApplicationRecord
  belongs_to :manager, optional: true
  has_many :assigned_tickets, foreign_key: 'employee_id'
  has_many :tickets, through: :assigned_tickets
end
