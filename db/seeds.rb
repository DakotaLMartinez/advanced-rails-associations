# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# create_table "tickets", force: :cascade do |t|
#   t.integer "employee_id"
#   t.integer "unit_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.text "details"
# end
#
# create_table "units", force: :cascade do |t|
#   t.string "building_name"
#   t.string "unit_number"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "assigned_tickets", force: :cascade do |t|
#   t.integer "employee_id"
#   t.integer "ticket_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
manager = User.first_or_create(
  first_name: "Chris",
  last_name: "Dundon",
  unit: "Basement",
  manager: true
)
employee = manager.employees.first_or_create(
  first_name: "Dakota", 
  last_name: "Martinez", 
  manager: false,
  manager_id: manager.id
)
Unit.destroy_all
Ticket.destroy_all
AssignedTicket.destroy_all

unit = Unit.create(building_name: "Park Place", unit_number: "8J")
ticket = Ticket.create(employee_id: employee.id, unit_id: unit.id, details: "Oven light won't come on" )
assignment = employee.assigned_tickets.create(ticket: ticket)


# binding.pry
