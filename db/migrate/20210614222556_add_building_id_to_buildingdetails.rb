class AddBuildingIdToBuildingdetails < ActiveRecord::Migration[5.2]
  remove_column :buildingdetails, :building_id
  def change
    add_reference :buildingdetails, :building, foreign_key: true
  end
end
