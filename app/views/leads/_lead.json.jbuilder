json.extract! lead, :id, :full_name, :company_name, :email, :phone, :project_name, :project_description, :department, :message, :attachment, :date_of_request, :created_at, :updated_at
json.url lead_url(lead, format: :json)
