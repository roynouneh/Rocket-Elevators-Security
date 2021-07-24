class CreateDimCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_customers do |t|
      t.datetime :creation_date
      t.string :company_name
      t.string :company_contact_full
      t.string :company_contact_email
      t.integer :nbelevators
      t.string :customer_city

      t.timestamps
    end
  end
end
