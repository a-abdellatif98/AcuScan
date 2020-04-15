json.extract! report, :id, :label, :date, :paitent_id, :doctor_id, :created_at, :updated_at
json.url report_url(report, format: :json)
