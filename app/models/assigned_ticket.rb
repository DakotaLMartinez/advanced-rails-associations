class AssignedTicket < ApplicationRecord
  belongs_to :employee, class_name: 'User'
  belongs_to :ticket
end
