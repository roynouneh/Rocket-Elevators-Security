class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|

# Author (EmployeeID of the ticket author)
# CustomerID
# BuildingID
# BatteryID (May be null)
# ColumnID (Can be null if none specified)
# ElevatorID (May be null if none specified)
# EmployeeID (Can be null if none specified)
# Start date and time of the intervention (must be null and void because it is not filled in the form. The field will be edited later at the time of the intervention)
# End date and time of the intervention (must be null and void because not filled in the form. The field will be edited later at the conclusion of the intervention)
# Result (Incomplete by default)
# Report (To persist the Description field)
# Status (Pending by default)

      t.integer             :author
      t.integer             :building_id
      t.integer             :battery_id,                                :null    => true
      t.integer             :column_id,                                 :null    => true
      t.integer             :elevator_id,                               :null    => true
      t.integer             :employee_id,                               :null    => true
      t.datetime            :start_date_and_time_of_the_intervention,   :null    => true
      t.datetime            :end_date_and_time_of_the_intervention,     :null    => true
      t.string              :result,                                    :null    => true
      t.text                :report
      t.string              :status,                                    :default => "Pending"
      
      t.timestamps
    end
  end
end
