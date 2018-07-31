class CreateAssignedTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_tickets do |t|
      t.integer :employee_id
      t.integer :ticket_id

      t.timestamps
    end
  end
end
