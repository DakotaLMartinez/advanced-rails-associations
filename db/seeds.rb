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

# create_table "units", force: :cascade do |t|
#   t.string "building_name"
#   t.string "unit_number"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.first_or_create(
  first_name: "Chris",
  last_name: "Dundon",
  unit: "Basement",
  manager: true
)
Unit.destroy_all
Ticket.destroy_all
AssignedTicket.destroy_all

unit = Unit.create(building_name: "Park Place", unit_number: "8J")
ticket = Ticket.create(employee_id: user.id, unit_id: unit.id, details: "Oven light won't come on" )

binding.pry