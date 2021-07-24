class AddBatteryIdToColumns < ActiveRecord::Migration[5.2]
  remove_column :columns, :battery_id
  def change
    add_reference :columns, :battery, foreign_key: true
  end
end
