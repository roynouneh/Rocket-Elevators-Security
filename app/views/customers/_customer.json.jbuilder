json.extract! customer, :id, :user_id, :customer_creation_date, :company_name, :comp_headquarters_adress, :contact_full_name, :contact_phone, :contact_email, :company_description, :service_technical_authority, :tech_auto_phone, :tech_manager_email, :created_at, :updated_at
json.url customer_url(customer, format: :json)
