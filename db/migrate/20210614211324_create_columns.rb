class CreateColumns < ActiveRecord::Migration[5.2]

  #drop_table :columns

  def change
    create_table :columns do |t|
      t.integer :battery_id
      t.string :type
      t.integer :number_of_floors_served
      t.string :status
      t.string :information
      t.text :notes

      t.timestamps
    end
  end
end
