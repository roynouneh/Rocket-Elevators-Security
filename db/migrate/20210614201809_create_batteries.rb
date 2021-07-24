class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.integer :building_id
      t.string :building_type
      t.string :status
      t.integer :employee_id
      t.date :commission_date
      t.datetime :last_inspection
      t.binary :certificate_of_operations
      t.string :information
      t.text :notes

      t.timestamps
    end
  end
end
