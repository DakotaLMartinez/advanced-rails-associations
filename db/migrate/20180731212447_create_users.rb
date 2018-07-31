class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :manager_id
      t.boolean :manager
      t.timestamps
    end
  end
end
