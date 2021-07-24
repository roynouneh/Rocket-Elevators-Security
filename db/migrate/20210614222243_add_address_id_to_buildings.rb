class AddAddressIdToBuildings < ActiveRecord::Migration[5.2]
  remove_column :buildings, :building_adress
  def change
    add_reference :buildings, :address, foreign_key: true
  end
end
