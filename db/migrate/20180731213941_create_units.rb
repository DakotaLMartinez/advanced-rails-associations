class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :building_name
      t.string :unit_number

      t.timestamps
    end
  end
end
