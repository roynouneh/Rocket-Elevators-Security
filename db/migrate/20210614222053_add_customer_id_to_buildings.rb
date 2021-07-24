class AddCustomerIdToBuildings < ActiveRecord::Migration[5.2]
  remove_column :buildings, :customer_id
  def change
    add_reference :buildings, :customer, foreign_key: true
  end
end
