Features:
Being able to assign employees 

User 
has_many :assigned_tickets :employee_id
has_many :tickets, through: assigned_tickets
has_many :buildings
has_many :units, through: :buildings

AssignedTicket
belongs_to :employee, class_name 'User'
belongs_to :ticket


Tickets
has_many :employees, through: :assigned_tickets
belongs_to :unit

Unit
has_many :tickets

