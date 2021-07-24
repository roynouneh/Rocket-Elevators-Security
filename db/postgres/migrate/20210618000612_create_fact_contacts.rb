class CreateFactContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_contacts do |t|
      t.bigint :contact_id
      t.datetime :creation
      t.string :company_name
      t.string :email
      t.string :project_name

      t.timestamps
    end
  end
end
