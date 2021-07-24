class RemoveCompHeadquartersAdressFromCustomers < ActiveRecord::Migration[5.2]
  remove_column :customers, :comp_headquarters_adress
end
