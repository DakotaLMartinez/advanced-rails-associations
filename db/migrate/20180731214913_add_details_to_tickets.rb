class AddDetailsToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :details, :text
  end
end
