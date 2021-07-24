class AddUsersIdToCustomers < ActiveRecord::Migration[5.2]
  remove_column :customers, :user_id
  def change
    add_reference :customers, :user, foreign_key: true
  end
end
