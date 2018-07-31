class User < ApplicationRecord
  belongs_to :manager, optional: true, class_name: 'User'
  has_many :employees, class_name: 'User', foreign_key: 'manager_id'
  has_many :assigned_tickets, foreign_key: 'employee_id'
  has_many :tickets, through: :assigned_tickets
end
