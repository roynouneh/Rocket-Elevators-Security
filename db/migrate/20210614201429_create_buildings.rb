class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.integer :customer_id
      t.string :building_adress
      t.string :admin_name
      t.string :admin_email
      t.string :admin_phone
      t.string :tech_contact_name
      t.string :tech_contact_email
      t.string :tech_contact_phone

      t.timestamps
    end
  end
end
