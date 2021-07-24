class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.date :customer_creation_date
      t.string :company_name
      t.string :comp_headquarters_adress
      t.string :contact_full_name
      t.string :contact_phone
      t.string :contact_email
      t.text :company_description
      t.string :service_technical_authority
      t.string :tech_auto_phone
      t.string :tech_manager_email

      t.timestamps
    end
  end
end
