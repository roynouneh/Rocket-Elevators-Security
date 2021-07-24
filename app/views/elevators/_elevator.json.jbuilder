json.extract! elevator, :id, :column_id, :serial_number, :model, :type_of_elevator, :status, :date_of_commissioning, :date_of_last_inspection, :certificate_of_inspection, :info, :notes, :created_at, :updated_at
json.url elevator_url(elevator, format: :json)
