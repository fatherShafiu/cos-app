json.extract! appointment, :id, :date, :student_id, :counselor_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
