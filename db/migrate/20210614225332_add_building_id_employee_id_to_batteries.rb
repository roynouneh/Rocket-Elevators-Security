class AddBuildingIdEmployeeIdToBatteries < ActiveRecord::Migration[5.2]
  remove_column :batteries, :building_id
  remove_column :batteries, :employee_id
  def change
    add_reference :batteries, :building, foreign_key: true
    add_reference :batteries, :employee, foreign_key: true
  end
end
