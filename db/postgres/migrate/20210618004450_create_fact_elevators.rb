class CreateFactElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_elevators do |t|
      t.bigint :serial_num
      t.datetime :date_of_commish
      t.bigint :building_id
      t.bigint :customer_id
      t.string :building_city

      t.timestamps
    end
  end
end
