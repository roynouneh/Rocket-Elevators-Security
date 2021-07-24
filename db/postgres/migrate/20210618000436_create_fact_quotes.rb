class CreateFactQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_quotes do |t|
      t.bigint :quote_id
      t.datetime :creation
      t.string :company_name
      t.string :email
      t.integer :nbelevator

      t.timestamps
    end
  end
end
