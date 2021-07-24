class AddColumnIdToElevators < ActiveRecord::Migration[5.2]
  remove_column :elevators, :column_id
  def change
    add_reference :elevators, :column, foreign_key: true
  end
end
