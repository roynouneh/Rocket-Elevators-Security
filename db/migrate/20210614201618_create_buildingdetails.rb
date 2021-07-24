class CreateBuildingdetails < ActiveRecord::Migration[5.2]
  def change
    create_table :buildingdetails do |t|
      t.integer :building_id
      t.string :information
      t.string :information_value

      t.timestamps
    end
  end
end
