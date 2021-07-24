class CreateQuotes < ActiveRecord::Migration[5.2]
  #drop_table :quotes
  
  def change
    create_table :quotes do |t|
      t.string :type_of_building
      t.integer :number_of_floors
      t.integer :number_of_apartments
      t.integer :number_of_basements
      t.integer :number_of_companies
      t.integer :number_of_parking_spots
      t.integer :number_of_elevators
      t.integer :number_of_corporations
      t.integer :maximum_occupancy
      t.integer :business_hours
      t.string :product_line
      t.string :elevator_amount
      t.string :elevator_unit_price
      t.string :elevator_total_price
      t.string :installation_fees
      t.string :final_price

      t.timestamps
    end
  end
end
