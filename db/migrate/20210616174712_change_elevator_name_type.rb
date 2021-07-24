class ChangeElevatorNameType < ActiveRecord::Migration[5.2]
  def change
    rename_column :elevators, :type, :type_of_elevator
  end
end
