class ChangeColumnNameType < ActiveRecord::Migration[5.2]
  def change
    rename_column :columns, :type, :type_of_column
  end
end
